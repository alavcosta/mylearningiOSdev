/*
  
  Desafio: Desafio funcoes - base de uma programacao dinamica e flexivel - alternativas em funções parametrizadas
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago Aguiar
  Data: 20/09/2023

*/

import UIKit

/*
 Notas da aula que antecede o desafio
 */

/*
 exemplo para uma funcão ter um nome padrão
 */
func getFullName ( firstName : String, lastName: String = "Desconhecido") -> String {
    return firstName + " " + lastName
}

var fullName = getFullName ( firstName: "Thiago")
print(fullName)

/*
 exemplo de chamada de uma função sem declarar o nome dos parametros, nao definindo o nome do argumento e tendo um valor padrão atribuido
 */
func getFullName3 ( _ firstName : String, _ lastName: String = "Desconhecido") -> String {
    return firstName + " " + lastName
}
print(getFullName3("Odair","Aguiar"))

/*
 exemplo de chamada de uma função declarando nomes differentes para argumentos x parametros
 */
func getFullName4 ( argumentLabel firstName : String, _ lastName: String = "Não informado") -> String {
    return firstName + " " + lastName
}

print(getFullName4(argumentLabel: "Waldeir") )


// Desafio
print("iniciando o desafio")

func showValueDiscount ( inputValue : Double, inputDiscount : Double = 20.00) {
    var valueOfDiscount = inputValue * inputDiscount / 100
    print("Parabéns, você obteve \(inputDiscount)% de desconto! \nIrá pagar pelo produto R$ \(inputValue-valueOfDiscount), economizando R$ \(valueOfDiscount) do preço de etiqueta de R$ \(inputValue)")
}

showValueDiscount(inputValue: 300, inputDiscount: 15)
showValueDiscount(inputValue: 500)


