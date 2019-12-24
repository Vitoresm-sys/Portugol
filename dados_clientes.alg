algoritmo "semnome"
// Função : dados de clientes
// Autor :
// Data : 14/12/2019
// Seção de Declarações 
var
     I: inteiro
     bd_cerveja:  vetor[1..3,1..2]de caractere
inicio


      para I de 1 ate 3 faca
           limpatela
           escreval("___________________")
           escreval(" Dados de cervejas   ")
           escreval("___________________")
           escreva("Marca de cerveja", I,": ")
           leia(bd_Cerveja[I,1])
           escreval("------------------")
           I <- I + 1;
           escreva("Digite o preço: ")
           leia(bd_cerveja[I,2])
           
      fimpara
      
      
      
fimalgoritmo
