/*
  
  Desafio: Desafio funcoes - Cenários de valores opcionais
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago Aguiar
  Data: 20/09/2023

*/

import UIKit

/*
 Notas da aula que antecede o desafio
 */
var username : String? = "Ala"
//username = nil
if let username = username {
    let chars = username.count
    print("A quantidade de caracteres da variavel username é \(chars)")
} else {
    print("O valor da variavel username esta nulo")
}

// outra forma mais reduzida de fazer
if let chars = username?.count {
    print("A quantidade de caracteres da variavel username é \(chars)")
} else {
    print("O valor da variavel username esta nulo")
}

func MegaSenaRuffleGenerator ( numbersToRuffle: Int?, maxNumber: Int?) -> Set<Int> {
    var numbers = numbersToRuffle ?? 6
    var maxNumberstoRuffle = maxNumber
    var results: Set<Int> = []

    while (numbers > 0) {
        /*
         Preciso testar se o valor maxNumber realmente não é nulo para evitar o crash no app
         esse teste se chama DESCOMPACTAR O VALOR
         o perigo aqui é que a variavel maxNumber é opcional, mas eu disse ao swift que
         garantia o valor não sendo nulo em maxNumberstoRuffle!
         Assim com esse teste, removo o risco do crash
         */
        if let isMaxNumberNil = maxNumber {
            let ruffleNumber = Int.random(in: 1...maxNumberstoRuffle!) // gerar numeros aleatórios de 1 a 60
            let res = results.insert(ruffleNumber) // colecao de dados sem repeticao
            
            if (res.inserted){
                numbers -= 1
            }
        } else {
            break
        }

    }
    return results
}

func fetchProductName (id: Int) -> String {
    let dict = [
        1: "iPhone",
        2: "MacBook",
        3: "iPad"
    ]
    
    /*
    if let productName = dict[id] {
        return productName
    } 
    else {
        return "produto não encontrado!"
    }
    */
    
    // outra forma de descompactar, evitar o crash e trabalhar na condição de erro
    // é utilizar o guard
    // primeiro eu trato a excecão
    // guard let var1 = conteudo1, let var2 = conteudo2 else { retorno }
    guard let productName = dict[id] else { return "produto não encontrado!"}
    
    return productName
}

// Chamada de uma função
print(MegaSenaRuffleGenerator( numbersToRuffle: nil, maxNumber: 60))
print(fetchProductName(id: 4))

// Desafio
/*
 1. ​Crie um programa que converta String em Int. Verifique se foi possível fazer a conversão e informe ao usuário tanto o sucesso quanto a falha. (teste a conversão da String "10" e depois da String "abc”. Dica: aplique os conceitos de if let ;)

 2. Use a mesma lógica com guard let desta vez.
 */

func convertStringToInt ( valueString : String ) -> Int {
    guard let numberConvertedFromString = Int(valueString) else { 
        print ("Erro: Não posso converter a string \(valueString) para inteiro!")
        return 0 }
    
    print("Sucesso: Convertido string \(valueString) para inteiro!")
    return numberConvertedFromString
}

convertStringToInt(valueString: "Ala")
convertStringToInt(valueString: "10")





