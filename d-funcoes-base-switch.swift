/*
  
  Desafio: Desafio funcoes - base de uma programacao dinamica e flexivel - switch
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 20/09/2023

*/

import UIKit

/*
 Notas da aula que antecede o desafio
 */

/*
 exemplo de uso do switch com saida da condição com a instrução return
 */
func discount( productId: Int) -> Double {
    switch (productId) {
    case 1:
        return 0.2
    case 2:
        return 0.4
    default:
        return 0.0
    }
}

/*
 Outra forma de usar o switch, mas usando o break para sair da condição
 */
func printProduct (name: String) {
    var message = ""
    switch (name) {
    case "iPhone", "iPad":
        message = "O produto utiliza OS iOS!"
        break
    case "Motorola":
        message = "O Produto utiliza OS Android!"
        break
    default:
        message = "Produto não encontrado!"
        break
    }
    print(message)
}

let d = discount(productId: 1)
print("desconto: \( Int(d*100))%")

printProduct(name: "iPad")

// Desafio
print("iniciando o desafio")

/*
 criar uma função que retorne uma mensagem informando se SAB ou DOM, é fim de semana, se SEG a SEX, é dia útil, e se não for nenhum dia, informar um erro no argumento passado
 */

func isBusinessDayofWeek ( weekDay : String ) {
    var message = ""
    switch (weekDay.uppercased()) {
    case "SEG", "TER", "QUA", "QUI", "SEX":
        message = weekDay + " é um dia útil na semana."
    case "SAB", "DOM":
        message = weekDay + " é um dia de final de semana."
    default:
        message = "Desculpe. Você informou um dia da semana inválido para consulta."
    }
    print(message)
}

isBusinessDayofWeek(weekDay: "SAB")
isBusinessDayofWeek(weekDay: "SABADO")
isBusinessDayofWeek(weekDay: "ter")
/*
  
  Desafio: Desafio funcoes - base de uma programacao dinamica e flexivel - switch
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago
  Data: 20/09/2023

*/

import UIKit

/*
 Notas da aula que antecede o desafio
 */

/*
 exemplo de uso do switch com saida da condição com a instrução return
 */
func discount( productId: Int) -> Double {
    switch (productId) {
    case 1:
        return 0.2
    case 2:
        return 0.4
    default:
        return 0.0
    }
}

/*
 Outra forma de usar o switch, mas usando o break para sair da condição
 */
func printProduct (name: String) {
    var message = ""
    switch (name) {
    case "iPhone", "iPad":
        message = "O produto utiliza OS iOS!"
        break
    case "Motorola":
        message = "O Produto utiliza OS Android!"
        break
    default:
        message = "Produto não encontrado!"
        break
    }
    print(message)
}

let d = discount(productId: 1)
print("desconto: \( Int(d*100))%")

printProduct(name: "iPad")

// Desafio
print("iniciando o desafio")

/*
 criar uma função que retorne uma mensagem informando se SAB ou DOM, é fim de semana, se SEG a SEX, é dia útil, e se não for nenhum dia, informar um erro no argumento passado
 */

func isBusinessDayofWeek ( weekDay : String ) {
    var message = ""
    switch (weekDay.uppercased()) {
    case "SEG", "TER", "QUA", "QUI", "SEX":
        message = weekDay + " é um dia útil na semana."
    case "SAB", "DOM":
        message = weekDay + " é um dia de final de semana."
    default:
        message = "Desculpe. Você informou um dia da semana inválido para consulta."
    }
    print(message)
}

isBusinessDayofWeek(weekDay: "SAB")
isBusinessDayofWeek(weekDay: "SABADO")
isBusinessDayofWeek(weekDay: "ter")
