algoritmo "Calculador"
// Função : Calcular idade
// Autor: Vitor
// Data : 24/12/2019
// Seção de Declarações 
var
     nasc, anoAtual, idade: real
inicio
  escreval("Em que ano voce nasceu:")
  leia(nasc)
  escreval("Em que ano estamos:")
  leia(anoAtual)
  
  idade <- anoAtual - nasc
  
  escreva("Você tem ", idade, " snos de idade")
  
fimalgoritmo
