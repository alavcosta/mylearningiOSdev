/*
  
  Desafio: Desafio Alterando Loop com Break and Continue
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 18/09/2023

*/

import UIKit


/*
 Notas da aula que antecede o desafio
 */
let dollars = [4.94, 4.89, 4.98, 5.01, 5.08, 4.97]
let daysptax : [String] = [ "09/01", "09/02", "09/03", "09/04", "09/05", "09/06",]

for i in 0..<dollars.count {
    if daysptax[i] == "09/04" {
        break
    }
    print("Ptax Dollar in \(daysptax[i]) is \(dollars[i]) -> Exercicio com break")
}

for i in 0..<dollars.count {
    if daysptax[i] == "09/04" {
        continue // Avanca para proxima iteracao
    }
    print("Ptax Dollar in \(daysptax[i]) is \(dollars[i]) -> Exercicio com continue")
}

// Desafio
print("iniciando o desafio")

var weekDays : [String] = ["Segunda","Terça","Quarta","Quinta","Sexta","Sábado","Domingo"]

for i in 0..<weekDays.count {
    if weekDays[i] == "Terça" {
        continue
    }
    else if weekDays[i] == "Sábado" {
        break
    }
    print("O dia dia semana é : \(weekDays[i])!")
}




