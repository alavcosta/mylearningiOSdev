/*
  
  Desafio: Desafio coleção de dados com Dicionários
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 18/09/2023

*/

import UIKit


/*
 Notas da aula que antecede o desafio
 */
// Arrary
// indice
// inteiros
// sequencial


// Dictionay - É una coleção ( chave - valor )
// chave - valor
// key - value
// desordenadas

var products : [String:Int] = [:]
var nameProducts : [Int:String] = [
    1: "Apple Watch",
    2: "MackBook",
    3: "iPad",
    4: "iPhone"
]

products ["Apple"] = 5
products ["Google"] = 16

// acessar valores atraves de uma chave
print(products)
print(nameProducts[30] ?? "Nenhum valor encontratado para a chave 30")

// para atualizar
print("Antes : \(nameProducts[2])")
nameProducts[2] = "iMac"
print(nameProducts[2])
print("Depois : \(nameProducts[2])")

// para contar elementos no Dictionary
print(nameProducts.isEmpty)
print(nameProducts.count)

// para remover
print("Antes : \(nameProducts[3])")
nameProducts[3] = nil
print(nameProducts[3])
print("Depois : \(nameProducts[3])")

// buscar todos as chaves
for keys in nameProducts.keys {
    print(keys)
}

// buscar todos os valores
for val in nameProducts.values {
    print(val)
}

// acessando chave e valor usando for
for (key, val) in nameProducts {
    print("Chave : \(key) | Valor : \(val)")
}

// Desafio
print("iniciando o desafio")

// Desafio 1 - criando e imprimindo uma estrutura de dados
var daysOfWeek : [ String: Bool] = [
    "Segunda" : true,
    "Terça" : true,
    "Quarta" : true,
    "Quinta" : true,
    "Sexta" : true,
    "Sábado" : false,
    "Domingo" : false
]

for (keys,values) in daysOfWeek where values == true { // imprimindo apenas os dias uteis
    print(keys)
}

// Alterando o sábado para dia util
daysOfWeek["Sábado"] = true

// Removendo o domingo do dicionário
daysOfWeek["Domingo"] = nil

// Imprimindo apenas as chaves que existem no dicinário
for keys in daysOfWeek.keys {
    print("Dia da semana : \(keys)")
}





