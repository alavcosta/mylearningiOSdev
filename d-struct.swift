/*
  
  Desafio: Desafio struct
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago Aguiar
  Data: 06/10/2023

*/

import UIKit

/*
 Notas da aula que antecede o desafio
 */
// toda struct é imutavel
struct User {
    // propriedades
    let name : String
    let lastName : String?
    let isAdmin : Bool
    var ranking : Int
    
    // metodos
    func getFullName () -> String {
        var fullName = name
        if let lastName = lastName {
            fullName += " \(lastName)"
        }
        return fullName
    }

    // por padrao, a struc é imutavel. Precisamos ordenar para a struct usando a instrução mutating
    mutating func resetRanking() {
        ranking = 0
    }
    
    func getRanking () -> Int {
        return ranking
    }
}

// instanciar / criar objeto
var userA = User(name: "Jesus", lastName: "de Nazare", isAdmin: true, ranking: 10)
var userB = User(name: "Pedro", lastName: nil, isAdmin: false, ranking: 11)
userA = User(name: "Jesus", lastName: "de Nazare", isAdmin: true, ranking: 0)

let resA = userA.getFullName()
print("O nome completo é \(resA) e seu ranking é \(String(userA.getRanking()))")

let resB = userB.getFullName()
print(resB)

/*
 desafio struct
 */

struct Person {
    let name : String
    let age : Int
    var height : Double // Altura em metros
    var weight : Double // Peso em kilos
    var imc : Double?
    
    mutating func getIMC () -> Double {
        var calcIMC =  weight / pow (height, 2)
        return calcIMC
    }
}

var myuserA = Person(name: "Pedro", age: 50, height: 1.76, weight: 71.1, imc: nil)
print("\(myuserA.name) tem um IMC de \(myuserA.getIMC())")
