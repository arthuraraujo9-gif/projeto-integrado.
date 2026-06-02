# A palavra "class" é usada para criar uma classe.
# Uma classe funciona como um molde para criar objetos
from functools import reduce


class Carro:

    # Método Construtor
    def __init__(self, marca, modelo, ano, velocidade=0):
        self.marca = marca
        self.modelo = modelo
        self.ano = ano
        self.velocidade = velocity = velocidade

    # Métodos
    # Método acelerar
    # "aumento" sera o valor recebido para aumenta a velocidade.
    def acelerar(self, aumento):
        # self.velocidade = self.velocidade + reducao
        self.velocidade += aumento

        print(f"O carro acelerou para {self.velocidade} km/h")

    # método frear
    def frear(self, reducao):
        # self.velocidade = self.velocidade - reducao
        self.velocidade -= reducao
        print(f"O carro freou para {self.velocidade} km/h")

    # metodo para exibir informações
    def exibir_info(self):
        print("=== informações do carro ===")

        # exibe os atributos do objeto
        print(f"Marca: {self.marca}")
        print(f"Modelo: {self.modelo}")
        print(f"Ano: {self.ano}")
        print(f"velocidade atual: {self.velocidade}")


# Criando um objeto da Classe Carro

# "carro1" é uma variável que recebe um objeto
carro1 = Carro("Chevrolet", "S10", 2013)


# chamando os metodos

# o valor 50 enviado para o paramento "aumento"
# carro1.reducao
carro1.acelerar(50)

# o valor 20 sera enviado para o paramento "reducao"
carro1.frear(20)

# exibindo as informações do carro
carro1.exibir_info()




# # "carro2" é uma variável que recebe um objeto
carro2 = Carro("BYD", "Dolphin Mini", 2025)

carro2.acelerar (50)

carro2.frear(20)

carro2.exibir_info()

