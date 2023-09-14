/*
  
  Desafio: Desafio Iteracao em colecoes
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 13/09/2023

*/

import UIKit


/*
 Notas da aula que antecede o desafio
 */
let dollars = [4.94, 4.89, 4.98, 5.01, 5.08, 4.97]
let daysptax = [ "09/01", "09/02", "09/03", "09/04", "09/05", "09/06",]

for i in 0..<dollars.count where dollars[i] < 5 {
    print("Ptax Dollar in \(daysptax[i]) is \(dollars[i])")
}

for day in daysptax { // fazendo looping dentro de todos os elementos do array - passado sua propria referencia
    print("Ptax Dollar available in \(day)")
}

// Desafio
print("iniciando o desafio")

var lecture : [String] = ["Matemática","Português","Geográfia","Ciências","Física","Química","Música","Educação Financeira","Ingês","Espanhol"]
var grade : [Double] = [7.5,8,9.4,6,7.4,6.8,9,10,8.3,9.7]
var sumOfGrades = grade.reduce(0, +)
var finalGrade = Double(sumOfGrades)/Double(grade.count)

print("Your final grade is : \(finalGrade)")
print("\nYour Lectures and grade by lecture are:")

for i in 0..<lecture.count {
    print("\(lecture[i]), grade : \(grade[i])")
}




