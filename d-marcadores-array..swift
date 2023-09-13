/* 
  
  Desafio: Desafio marcadores de Array
  Curso: Dominando a Linguagem Swift
  Trilha: iOS Developer
  instrutor: Tiago 
  Data: 13/09/2023

*/
import UIKit

// declaracao de arrays
var userName: [String] = ["Pedro", "Tiago", "Joao"]
userName.append("Mateus") // adicionando elemento no array
userName += ["Judas", "Simao"] //adicionando um array há um array existente

// acessando o array
var fistElementArray = userName[0]
var referenceFirstTreeElementsArray = userName[1...2] // fatiando (slide) arrays fazendo referencia aos elementos
var firstTreeElementsArray = Array(userName[1...2]) // fatiando array e criando um novo array

// evitando acessar informacoes de array que nao existem -- funcoes de condicao de um array
userName.isEmpty // verificar lista vazia
userName.count // verifica o tamanho da lista
userName.contains("Maria") // verifica se contém o nome Maria
userName.first // devolve o primeiro elemento da lista

// Desafio 1
var appleProducts: [String] = ["iMac", "iPhone", "iPod", "AppleWatch"]

// Desafio 2
appleProducts.append("iPad")

// Desafio 3
var sizeAppleProductsArray = appleProducts.count - 2
var newAppleProducts: [String] = Array(appleProducts[0...sizeAppleProductsArray])

// Desafio 4
newAppleProducts.count > 3 ? print("Sua lisa de produtos está ok") : print("Falta itens em sua lista")

// Desafio 5
var productToFind = "Iphone"

// forma 1 que aprendi nos comentários com o Thiago C, mas imprimindo o valor do elemento no array buscado
newAppleProducts.contains(productToFind) ? print ("Produto encontrado: ",newAppleProducts.first( where: { $0 == productToFind} )! ) : print("O produto \(productToFind) não está cadastrado!")


// Desafio 6
newAppleProducts.removeAll()

