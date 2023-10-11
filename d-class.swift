/*
  
  Desafio: Desafio class
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

// programacao orientada a objeto - OOP
struct Persona {
    let name : String
    var cpf : Int
    
}

let personaA = Persona(name: "Tiago", cpf: 1223223244)
var personaB = personaA
personaB.cpf = 999990999909

print("persona A = \(personaA)")
print("persona B = \(personaB)")
print("persona A = \(personaA)")

// class x struct
// 1. Struct precisa inicializar, porém class precisa usar o init
// 2. nao consegue imprimir como uma struct nao mostrando as proprieadades
// 3. Class é um tipo por referência (reference type) e struct é uma value type - dados sao copiados para novo espaco de memoria
// 4. Class pode ter funcao e pode mudar valores, não precisando usar a instrucao mutating
// 5. resumo
//     struct -> value type     | valores | copia         | imutavel
//     class  -> reference type | objetos | compartilhado | mutavel

class Personac {
    let name : String
    var cpf : Int
    
    init(name: String, cpf: Int) {
        self.name = name
        self.cpf = cpf
    }
}

let cpersonaA = Personac(name: "Tiago", cpf: 1223223244)
let cpersonaB = cpersonaA

print ("Class variavel cpf A = \(cpersonaA.cpf)")
print ("Class variavel cpf B = \(cpersonaB.cpf)")

cpersonaB.cpf = 999990999909

print ("Class variavel cpf A = \(cpersonaA.cpf)")
print ("Class variavel cpf B = \(cpersonaB.cpf)")

/*
 desafio struct
 */

class Person {
    let name : String
    let age : Int
    var height : Double // Altura em metros
    var weight : Double // Peso em kilos
    var imc : Double?
    
    init(name: String, age: Int, height: Double, weight: Double, imc: Double? = nil) {
        self.name = name
        self.age = age
        self.height = height
        self.weight = weight
        self.imc = imc
    }
    
    func getIMC () -> Double {
        var calcIMC =  weight / pow (height, 2)
        return calcIMC
    }
}

let myuserA = Person(name: "Pedro", age: 50, height: 1.76, weight: 71.1, imc: nil)
print("\(myuserA.name) tem um IMC de \(myuserA.getIMC())")
