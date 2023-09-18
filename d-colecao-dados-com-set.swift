/*
  
  Desafio: Desafio coleção de dados com Set
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 18/09/2023

*/

import UIKit

/*
 Notas da aula que antecede o desafio
 */

// Sets é como um array, mas não permite valores repetidos
var newDict :  [String:Int] = [:]
var newArray : [String] = []
var newSet : Set<Int> = []

newSet.insert(3)
newSet.insert(10)
newSet.insert(10)

print(newSet)

let response = newSet.insert(4)
print(response)

let removed = newSet.remove(4)
print(newSet)
print(removed)

newSet.removeAll()
print(newSet)

// Desafio
print("iniciando o desafio")

// Desafio 1 - criando e imprimindo uma estrutura de dados
var bookMeetingDays : Set<String> = [ "01/02", "02/02", "03/02" ]

bookMeetingDays.insert("04/02")
bookMeetingDays.remove("02/02")
var bookMeetingDayNew = bookMeetingDays.insert("04/02")

if !bookMeetingDayNew.inserted {
    print("Não foi possível inserir 04/02 pois já existe")
}
