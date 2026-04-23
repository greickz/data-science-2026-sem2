<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&height=220&color=0:0f172a,35:1d4ed8,70:7c3aed,100:ec4899&text=2º%20Semestre%20%7C%20Ciência%20de%20Dados&fontColor=ffffff&fontSize=38&fontAlignY=38&desc=Exercícios%2C%20Projetos%20e%20Anotações%20da%20Graduação&descAlignY=60&animation=fadeIn" />

## Descrição

Este projeto representa um portfólio abrangente de exercícios e projetos em Ciência de Dados, desenvolvido durante o segundo semestre de 2026. Ele demonstra habilidades práticas em modelagem de bancos de dados, consultas SQL avançadas, desenvolvimento de APIs RESTful e criação de dashboards interativos para visualização de dados.

## Tecnologias Utilizadas

- **Banco de Dados**: MySQL
- **Linguagem de Programação**: Python 3.x
- **Frameworks Web**:
  - Flask (desenvolvimento de APIs REST)
  - SQLAlchemy (ORM para conexão com banco de dados)
- **Visualização de Dados**:
  - Streamlit (dashboard interativo)
  - Plotly (gráficos)
  - Pandas (manipulação de dados)
- **Conectores**: mysql-connector-python, mysqlclient

### Detalhes das Pastas

- **API_Banco_de_Dados**: Contém APIs Flask conectadas a bancos MySQL reais, implementando operações CRUD para dados de carros e clientes veterinários.
- **API_Dashboard_Streamlit**: Dashboard interativo que conecta ao banco de carros, permitindo filtros por marca, modelo, ano, valor e cor, com visualizações em gráficos.
- **MY_SQL**: Coleção completa de scripts SQL cobrindo desde DDL básico até conceitos avançados como triggers e procedures para diferentes domínios.
- **Primeira_API**: Introdução ao desenvolvimento de APIs com Flask, usando dados simulados em memória.

## Execução

1. **APIs Flask**:
   ```bash
   # API de Carros
   cd API_Banco_de_Dados
   python main.py

   # API Veterinária
   python exercicio_clientes_Vet.py

   # Primeira API
   cd ../Primeira_API
   python main_api.py
   ```
   As APIs estarão disponíveis em `http://localhost:5000`

2. **Dashboard Streamlit**:
   ```bash
   cd API_Dashboard_Streamlit
   streamlit run dashboard.py
   ```
   O dashboard abrirá no navegador em `http://localhost:8501`

3. **Scripts SQL**:
   - Use um cliente MySQL (como MySQL Workbench) ou linha de comando
   - Execute os arquivos `.sql` na ordem apropriada (DDL primeiro, depois DML, etc.)

## Dados

### Fonte dos Dados
- **Dados Simulados**: Criados especificamente para fins educacionais e demonstrativos
- **Domínios Cobertos**:
  - **Automotivo**: Informações de carros (marca, modelo, ano, valor, cor, vendas)
  - **Biblioteca**: Autores, livros, membros e empréstimos
  - **Educacional**: Cursos, professores, disciplinas, estudantes e matrículas
  - **Veterinário**: Clientes, pets e informações clínicas

### Explicação Básica
Os dados foram modelados seguindo princípios de normalização de banco de dados, com relacionamentos apropriados (1:N, N:M) entre entidades. Incluem exemplos realistas para demonstrar consultas complexas e operações de negócio.

## Resultados e Insights

### O que foi Descoberto/Construído
- **Modelagem de Dados**: Capacidade de projetar esquemas relacionais eficientes para diferentes contextos
- **SQL Avançado**: Implementação de triggers para auditoria automática, procedures para operações complexas, e subqueries para análises sofisticadas
- **APIs RESTful**: Desenvolvimento de endpoints para operações CRUD com tratamento adequado de erros
- **Visualização Interativa**: Dashboard que permite exploração dinâmica dos dados de vendas de carros
- **Integração Completa**: Fluxo de dados do banco MySQL → API Flask → Dashboard Streamlit

### Aprendizados Técnicos
- Boas práticas em design de APIs (REST, JSON responses)
- Otimização de consultas SQL com joins e índices
- Manipulação segura de dados com transações
- Criação de interfaces intuitivas para usuários não-técnicos

## Melhorias e Trabalhos Futuros

- **Autenticação e Segurança**: Implementar JWT tokens e controle de acesso baseado em roles
- **Dados Reais**: Integração com APIs externas para dados reais (ex: APIs de veículos, bibliotecas públicas)
- **Testes Automatizados**: Adicionar suites de teste unitário e integração
- **Deploy em Produção**: Containerização com Docker e deploy em plataformas cloud (Heroku, AWS)
- **Machine Learning**: Adicionar modelos preditivos para análise de vendas de carros
- **Microserviços**: Refatorar em arquitetura de microserviços para melhor escalabilidade
- **Documentação de API**: Adicionar Swagger/OpenAPI para documentação automática

---

*Este projeto faz parte do meu portfólio acadêmico e profissional. Feedbacks são sempre bem-vindos!*
