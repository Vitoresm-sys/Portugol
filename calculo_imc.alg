algoritmo "semnome"
// Função : calculo IMC
// Autor :   vitor
// Data : 08/12/2019
// Seção de Declarações 
var
peso, altura, imc : real
inicio

escreval("______________________________")
escreval(" ******Calcule seu IMC*******")
escrevaL(" Indice de Massa Corporal ")
escreval("______________________________")
escrevaL("Digite seu peso em massa 'KG':")
leia(peso)

escreval("Digite sua altura em metros:")
leia(altura)


imc <- peso/(altura ^2)

escreval("Seu IMC é: ", imc:5:2)

se (imc <= 17) entao
    escreval("você está muito abaixo dp peso!")
senao
    se (imc >= 18.5 ) e (imc < 25) entao
       escreval("Parabéns! você está no peso ideal!")
    senao
       se (imc >= 25) e (imc < 30) entao
          escreval("Sobre peso")
       senao
          se (imc >= 30) e (imc <35) entao
             escreval("você está em estado de obesidade!")
          senao
             se (imc >= 35) e (imc < 40) entao
                escreva("VocÊ está em estado de obesidade severa!")
             senao
                   escreva("obsidade morbida")

             fimse
          fimse
       fimse
    fimse
fimse

fimalgoritmo


