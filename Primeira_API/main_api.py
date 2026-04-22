# instalação flask

from flask import Flask, request, make_response, jsonify #request = requisições, make_response = estruturas de respostas, jsonfy = formato json

# modelo em um arquivo local para uma importação da base de dados

from BD import Carros

app = Flask('carros') # Esse módulo do Flask vai subir a nossa API localmente, vamos instanciar o modulo Flask na nossa variavel app

# metodo 1 - visualização de dados (GET)

# 1 - O que ele vai fazer?
# 2 Onde ele vai fazer?

@app.route('/pequenocarro', methods=['GET']) # aonde ele vai fazer, /pequenocarro = é o caminho na url, GET = o método get que permite apenas consultas, http://localhost:5000/pequenocarro
def get_carros(): # função 
    return Carros # retorna a lista completa de carros

# metodo 1.1 parte 2: O retorno - visualização de dados por ID (GET)

@app.route('/pequenocarro/<int:id>', methods=['GET'])
def get_carros_id(id):
    for carro in Carros:
        if carro.get('id') == id: # se o id dos registros é iguel aget_carros_id(id)
            return jsonify(carro) # adaptando para o formato json


# metodo 2 - criar novos registros (POST)
# verificar os dados que estão sendo passados na requisição e armazenar na base

@app.route('/pequenocarro', methods=['POST'])
def criar_carro():
    carro = request.json # verifica a requisção, pegua os dados
    Carros.append(carro) # e adiciona na lista
    return make_response(
        jsonify(
            recado = 'Carro cadastrado com sucesso, katchau',
            littlecarro = carro
        )
    )


# metodo 3 - deletar registros (DELETE)

@app.route('/pequenocarro/<int:id>', methods = ['DELETE'])

def excluir_carro(id):
    for indice, carro in enumerate(Carros): # enumerate permite que a lisata seja percorrido se baseando nas duas variaveis: indice(posição), carro
        if carro.get('id') == id:
            del Carros[indice]
            return jsonify(
                {'mensagem': 'carro foi de base, katiti'}
            )
        

# metodo 4 - editar os registros (PUT)

@app.route('/pequenocarro/<int:id>', methods = ['PUT'])
def editar_carro(id):
    carro_alterado = request.get_json()
    for indice, carro in enumerate(Carros):
        if carro.get('id') == id:
            Carros[indice].update(carro_alterado)
            return jsonify(
                Carros[indice]
            )




app.run(port=5000, host='localhost', debug=True) # rodar a API