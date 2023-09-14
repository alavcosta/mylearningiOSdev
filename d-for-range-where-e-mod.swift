/*
  
  Desafio: Desafio For. Range. Where e mod
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 13/09/2023

*/

import UIKit


/*
 Notas da aula que antecede o desafio
 */

// sequencias (ranges)
let range = 0...5 // inclusive
let rangee = 0..<5 // exclui o 5

var limit = 5
let rg = 0..<limit

// for é controlado pelo range
var sum = 0
let count = 10

for i in 1...count { // i usado no for é imutavel (let)
    sum += i
}
print(sum)

for _ in 0...count { // ignorando o i e repetindo a quantidade de vezes determinado na variavel count
    print("oi")
}

for i in 0...count where i % 2 == 0 { // imprimindo apenas numeros pares usando o modulo - é o resto da divisão de i % 2
    print("indice é :\(i)")
}

for i in 0..<5 {
    print("indice é: \(i)")
}

/*
 Código do desafio
 */

print("Iniciando resolução desafio")
// exibir nomes de empresas que somente estejam registradas no indice impar de um array
let companyNames : [String] = ["Tesla","Microsoft","Space X", "Apple", "X","Coca-Cola"]
let companyCount = companyNames.count

for i in 0..<companyCount where i % 2 != 0 {
    print("Company name is : \(companyNames[i]) and the index is \(i)")
}
