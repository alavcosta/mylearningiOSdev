/*
  
  Desafio: Repetição de Código com Repeat e While
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 13/09/2023

*/

import UIKit


/*
 Notas da aula que antecede o desafio
 */
print("Looping usando WHILE ...")
// com WHILE, ele checa primeiro a condição
var i = 1
while (i < 10) {
    print(i)
    i += 1
}

print("Nova forma de looping usando REPEAT (Do While)")
// com REPEAT, ele faz primeiro a instrução e depois checa condição
var j = 0
repeat {
    print(j)
    j += 1
} while (j < 10)

/*
 Código do desafio
 */

print("Iniciando resolução desafio")

// Imprimir saudações de boas vindas para 5 nomes de empresas de um array
let companyNames : [String] = ["Microsoft", "Apple", "SpaceX", "Nasa", "GitHub"]
let numberOfCompaniesToSayHi = companyNames.count
var k = 0

repeat {
    print("Hi \(companyNames[k])! Welcome to my code.")
    k += 1
} while (k < numberOfCompaniesToSayHi)

