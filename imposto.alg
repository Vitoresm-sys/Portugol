algoritmo "Imposto"
// Função : ler impostos de 60%
// Autor : vitor
// Data : 08/12/2019
// Seção de Declarações 
var
   imposto, produto, valorimposto: real
inicio

      escrevaL("Qual é o valor do produto?" )
      leia(produto)
      
      valorimposto <- (produto * 60 )/100
      
      escreva("O valor do imposto é R$", valorimposto)
      
fimalgoritmo
