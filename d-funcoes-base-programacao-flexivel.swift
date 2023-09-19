/*
  
  Desafio: Desafio funcoes - base de uma programacao dinamica e flexivel
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 19/09/2023

*/

import UIKit

/*
 Notas da aula que antecede o desafio
 */

// Função - bloco de código que podemos reusar em outras partes do código
func MegaSenaRuffleGenerator ( numbersToRuffle: Int) -> Set<Int> {
    var numbers = numbersToRuffle
    var results: Set<Int> = []

    while (numbers > 0) {
        let ruffleNumber = Int.random(in: 1...60) // gerar numeros aleatórios de 1 a 60
        let res = results.insert(ruffleNumber) // colecao de dados sem repeticao
        
        if (res.inserted){
            numbers -= 1
        }
    }
    return results
}

// Chamada de uma função
print(MegaSenaRuffleGenerator( numbersToRuffle: 6))
print(MegaSenaRuffleGenerator( numbersToRuffle: 5))


// Desafio
print("iniciando o desafio")

// Função para gerar senha aleatória com 10 números
func passwordGenerator ( numbersOfCharacters: Int) -> String {
    var numbers = numbersOfCharacters
    var results: Set<Int> = []
    var passwordCreated : String = ""

    while (numbers > 0) {
        let ruffleNumber = Int.random(in: 0...9) // gerar numeros aleatórios de 0 a 9
        let res = results.insert(ruffleNumber) // colecao de dados sem repeticao
        
        if (res.inserted){
            numbers -= 1
            passwordCreated += String(ruffleNumber)
        }
    }
    return passwordCreated
}

print(passwordGenerator(numbersOfCharacters: 10))
