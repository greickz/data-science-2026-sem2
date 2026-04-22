import streamlit as st
import pandas as pd
# pip install plotly
import plotly.express as px
# pip install streamlit-option-menu
from streamlit_option_menu import option_menu # para trabalhar com menus no dash
from query import conexao # consulta no banco de dados

# *** PRIMEIRA CONSULTA E ATUALIZAÇÂO ***

# Consulta

query = "SELECT * FROM tb_carro"

data_frame = conexao(query) # carregar os dados para a variavel data_frame

# Atualização - botão

if st.button("Atualizar Dados"):
    data_frame = conexao(query)

# ***********************************

# Estrutura de filtro lateral

marca = st.sidebar.multiselect("Marca Selecionada", # barra lateral
                               options=data_frame["marca"].unique(),
                               default= data_frame['marca'].unique()) # o que ja vai vim selecionado

modelo = st.sidebar.multiselect("Modelo Selecionado",
                                options=data_frame["modelo"].unique(),
                                default= data_frame["modelo"].unique())

ano = st.sidebar.multiselect("Ano Escolhido",
                             options=data_frame["ano"].unique(),
                             default=data_frame["ano"].unique())

valor = st.sidebar.multiselect("Valor Escolhido",
                               options=data_frame["valor"].unique(),
                               default=data_frame["valor"].unique())

cor = st.sidebar.multiselect("Cor escolhida",
                             options=data_frame["cor"].unique(),
                             default=data_frame["cor"].unique())

# numero_vendas = st.sidebar("Numero de Vendas",
#                            options=data_frame["numero_Vendas"].unique(),
#                            default=data_frame["numero_Vendas"].unique())


min_vendas = int(data_frame["numero_Vendas"].min())
max_vendas = int(data_frame["numero_Vendas"].max())

vendas = st.sidebar.slider(
    "Intervalo de Número de Vendas Selecionado",
    min_value=min_vendas,
    max_value=max_vendas,
    value=(min_vendas, max_vendas) # Valor inicial
    )


# *** VERIFICAÇÃO DA APLICAÇÃO DOS FILTROS ***

df_selecionado = data_frame[
    (data_frame["marca"].isin(marca)) & # isin = verifica se o filtro foi aplicado
    (data_frame["modelo"].isin(modelo))&
    (data_frame["ano"].isin(ano))&
    (data_frame["valor"].isin(valor))&
    (data_frame["cor"].isin(cor))&
    (data_frame["numero_Vendas"] >= (vendas[0]))& # 0 (min)
    (data_frame["numero_Vendas"] <=(vendas[1])) # 1 (max)
    ]

# *** DASHBOARD ***

# Cards de valores

def pagina_inicial():
    with st.expander("Tabela de Carros"): # with = divisão da estrutura da pagina, expander = uma caixa que expande para selecionar varias opções
        exibicao = st.multiselect("Filtro",
                                  df_selecionado.columns,
                                  default = [],
                                  key="Filtro_Exibicao" # nome filtro
                                  )
        
        if exibicao:
            st.write(df_selecionado[exibicao])

    if not df_selecionado.empty: # verifica se esta vazio
        total_vendas = df_selecionado["numero_Vendas"].sum()
        media_valor = df_selecionado["valor"].mean()
        media_vendas = df_selecionado["numero_Vendas"].mean()

        card1, card2, card3 = st.columns(3, gap="large")
        with card1:
            st.info("Valor Total de Vendas", icon="📈")
            st.metric(label="Total", value=f"{total_vendas:,.0f}")
        with card2:
            st.info("Valor Médio dos Carros", icon="📈")
            st.metric(label="Total", value=f"{media_valor:,.0f}")
        with card3:
            st.info("Valor Médio de Vendas", icon="📈")
            st.metric(label="Total", value=f"{media_vendas:,.0f}")


    else:
        st.warning("Nenhum dado disponível com os filtros selecionados")
    st.markdown("""-----""")

# *** GRÁFICOS ***

def graficos(df_selecionado):
    if  df_selecionado.empty:
        st.warning("Nenhum dado disponível para gerar os gráficos")
        return

    
    graf1, graf2 = st.tabs(["Grafico de barras", 
                            "Gráfico de linhas"])
    
    with graf1:
        st.write("Gráfico de Barras")
        valor = df_selecionado.groupby("marca").count()[["valor"]].sort_values(by="valor", ascending=False) # ordem decrescente

        fig1 = px.bar(
            valor,
            x = valor.index, # marcas
            y = "valor",
            orientation="h",
            title="Valores dos Carros",
            color_discrete_sequence=["#0083b8"]
        )

    #  exibir o grafico

        st.plotly_chart(fig1, use_container_width=True) # use_container_width = espaçamento


    with graf2:
        st.write("Gráfico de Linhas")
        valor_linhas =df_selecionado.groupby("modelo").count()[["valor"]]

        fig2 = px.line(
            valor_linhas,
            x = valor_linhas.index,
            y = "valor",
            title="Valor por Modelo",   
            color_discrete_sequence=["#e41c68"]
        )

        st.plotly_chart(fig2, use_container_width=True)


pagina_inicial()
graficos(df_selecionado)