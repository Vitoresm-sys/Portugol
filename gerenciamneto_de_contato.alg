algoritmo "Contatos"
// Função :
// Autor : vitor
// Data : 24/01/2019
// Gerenciamneto de contatos 
var
linha: VETOR[1..20,1..3] DE caractere
 cont2,contc, con,cont99, l, codigo, salv, nome, numero, coluna: inteiro
resp, resp2, nomepesq, pesqsobre, q: caractere
auxilialaco, achouNome: logico
procedimento home()
inicio

limpatela
Escreval("______________________________________________")
eSCREVAL()
Escreval("**********GERENCIAMENTO DE CONTATOS**********" )

Escreval("______________________________________________")

Escreval("[1] Ver lista de contato: ")
Escreval("[2] Pesquisar contato pelo nome: ")
Escreval("[3] Pesquizar contato pelo sobrenome: ")
escreval("[4] Adicionar contato:")
Escreval("[5] Editar contato:" )
escreval("[6] Excluir contato:")
escreval("Digite a opçao de escolha, numerico, de 1 a 6")



leia(codigo)
Escolha codigo
caso 1
   limpatela
   vercont()
caso 2
   limpatela
   pesqcont()
caso 3
   pesqsobre()
caso 4
   iserircontato()
caso 5
   EDITCONT()
caso 6
   excluir()
outrocaso
   Escreval("Digite uma opçao correta! de 1 a 6")
   Escreval("Digite qualquer tecla para voltar a o inicio")
   leia(q)
   home()
fimse

fimprocedimento

procedimento EDITCONT()
var
pesqconte, edit, pesq1: caractere
cnt: Inteiro
achou, gambiarra: logico

inicio
limpatela
cnt<- 0
escreval("Digite o nome do contato que deseja procurar:")
leia(pesqconte)

se (pesqconte = (""))  entao
      Escreval("nome nao encontrado! Digete o nome do contato")
      Escreval ( "Deseja perquisar novamente? [S/N] caso N inicio")
      leia (resp2)
senao
   enquanto (cnt < 20) faca
   cnt <- cnt + 1

      se (pesqconte  = linha[cnt,1]) entao
         achou <- verdadeiro
         se achou entao
            limpatela
            EScreval("***Informacoes do contato***")
            Escreval("Nome:",linha[cnt,1])
            Escreval("Sobrenome:",linha[cnt,2])
            Escreval("Numero:",linha[cnt,3])
            Escreval("editar contato?")
            Escreval(" [S] Sim [N] Não, caso nao inicio")
            Leia(edit)
               se (edit = "S") entao
                   limpatela
                  Escreval("****editar****")
                  Escreva("Nome:")
                  leia(linha[cnt,1])
                  Escreva("Sobrenome:")
                  Leia(linha[cnt,2])
                  Escreva("Numero:")
                  leia(linha[cnt,3])
                  limpatela
                  Escreval("------------------------")
                  escreval("***Contato atualizado***")
                  Escreval("Nome:",linha[cnt,1])
                  Escreval("Sobrenome:",linha[cnt,2])
                  Escreval("Numero:",linha[cnt,3])
                  escreval("------------------------")
                  gambiarra <- verdadeiro
               fimse
         fimse
      fimse

   fimenquanto
fimse



   se achou <> verdadeiro  entao
      escreval("Contato nao encontrado!")
      Escreval("Pesquizar novamemete")
      escreval(" [S] Sim [N] Não, caso nao inicio")
      Leia(pesq1)
      Escolha pesq1
      caso "N"
      home()
      Caso "S"
      EDITCONT()
      outrocaso
      EDITCONT()
   senao gambiarra = verdadeiro entao
         escreval(" [S] Sim [N] Não, caso nao inicio")
         Leia(pesq1)
         Escolha pesq1
         caso "N"
         home()
         Caso "S"
         EDITCONT()
         outrocaso
         EDITCONT()
   fimse





fimprocedimento



procedimento excluir()
var
cnt: inteiro
procura:caractere
achou: logico
apaga, RESP123: caractere
inicio
limpatela
Escreval("Digite o nome do Contato que deseja excluir:")
leia(procura)
achou <- falso
para cnt de 1 ate 20 faca
   se (procura  = linha[cnt,1]) entao
   achou <- verdadeiro
      se achou entao
         limpatela
         Escreval("Nome:",linha[cnt,1])
         Escreval("Sobrenome:",linha[cnt,2])
         Escreval("Numero:",linha[cnt,3])
         Escreval("confirmar exclusao do contato?")
         Escreval(" [S] Sim [N] Não")
         Leia(apaga)
            Se (apaga = "S") entao
              linha[cnt,1] <- ("")
              linha[cnt,2] <- ("")
              linha[cnt,3] <- ("")
              Escreval("contato excluido!")
              escreval("Deseja voltar ao inicio? [S] inicio")
              leia(RESP123)
              escolha  RESP123
              CASO ("S")
                home()
              outrocaso
               excluir()
              fimse
              
            senao
               home()
              
            fimse
      fimse
   fimse
fimpara
se achou <> verdadeiro entao
Escreval("nome nao encontrado!") fimse





fimprocedimento



procedimento pesqsobre()
var
cont: inteiro
sobrenomepesq: caractere
inicio
nomepesq <- ("")
resp2 <- ("")
repita

   limpatela
   escreva ("Digite o sobrenome do contato que deseja pesquisar: ")
   leia (sobrenomepesq)
   cont <- 0
   achouNome <- falso

   se sobrenomepesq = ("")  entao
      Escreval("nome nao encontrado!")
      Escreval ( "Deseja perquisar novamente? [S/N] caso N inicio")
      leia (resp2)

      se resp2 =  "N" entao
       home()
      senao
         limpatela
         pesqcont()
      fimse
   senao

      enquanto (cont < 20) faca
         cont <- cont + 1

         se (sobrenomepesq  = linha[cont,2]) entao
             escreval("___________________________")
            escreval ("**Informações do contato** ")
            escreval ("Nome: ",linha[cont,1])
            Escreval ("Sobrenome:",linha[cont,2])
            Escreval( "Numero:",linha[cont,3] )
            achouNome <- verdadeiro
         fimse

      FIMENQUANTO

      se achouNome = verdadeiro  entao
         Escreval ( "Deseja perquisar novamente? [S/N] caso N inicio")
         leia (resp2)

         se resp2 =  "N" entao
            home()
            achouNome <- falso
         senao
            limpatela
            ()
         fimse
      senao
         Escreval ( "Contato não existe!")
         Escreval ( "Deseja perquisar novamente? [S/N] caso N inicio")
         leia (resp2)

         se resp2 =  "N" entao
          home()
          achouNome <- falso
         senao
            limpatela
            pesqcont()
         fimse
      fimse
   senao

   fimse



ate(resp2 = "N")
fimprocedimento

procedimento pesqcont()
var
  cont : inteiro
inicio

repita

   escreva ("Digite o nome do contato que deseja pesquisar: ")
   leia (nomepesq)
   cont <- 0
   achouNome <- falso
   
   se nomepesq = ("")  entao
      Escreval("nome nao encontrado!")
      Escreval ( "Deseja perquisar novamente? [S/N] caso N inicio")
      leia (resp2)

      se resp2 =  "N" entao
       home()
      senao
         limpatela
         pesqcont()
      fimse
   senao

      enquanto (cont < 20) faca
         cont <- cont + 1

         se nomepesq  = linha[cont,1] entao
            escreval ("** Informações do contato**")
            escreval("___________________________")
            escreval ("Nome: ",linha[cont,1])
            Escreval ("Sobrenome:",linha[cont,2])
            Escreval ("NUMERO:", linha[cont,3] )

            achouNome <- verdadeiro
         fimse

      FIMENQUANTO
      
      se achouNome = verdadeiro  entao
         Escreval ( "Deseja perquisar novamente? [S/N] caso N inicio")
         leia (resp2)

         se resp2 =  "N" entao
            home()
            achouNome <- falso
         senao
            limpatela
            pesqcont()
         fimse
      senao
         Escreval ( "Contato não existe!")
         Escreval ( "Deseja perquisar novamente? [S/N] caso N inicio")
         leia (resp2)

         se resp2 =  "N" entao
          home()
          achouNome <- falso
         senao
            limpatela
            pesqcont()
         fimse
      fimse
   senao

   fimse
   
   

ate(resp2 = "N")

fimprocedimento


procedimento iserircontato()
inicio
Repita
   LIMPATELA
   cont99 <- cont99 + 1
   Escreval("________________________")
   Escreval("******NOVO CONTATO******")
   Escreval("________________________")
   Escreva("NOME: ")

   leia(linha[cont99,1])
   Escreva("Sobrenome:")
   leia(linha[cont99,2])
   Escreva("NUMERO: ")
   Leia(linha[cont99,3] )
   limpatela
   Escreval("*****Contato Salvo*****")
   Escreval("Nome:",linha[cont99,1])
   Escreval("Sobrenome:",linha[cont99,2])
   Escreval("Numero:",linha[cont99,3])
   Escreval("___________________________")

   Escreval("Deseja salvar outro contato: [S/N]")
   leia(resp)
ate resp = "N"
Se  resp = "N" entao
   home()
Fimse



fimprocedimento

procedimento vercont()
var cont: inteiro
LISTAVAZIA : LOGICO
inicio
limpatela
LISTAVAZIA <- verdadeiro
Repita

   para cont  <- 1 ate 20 faca
     se linha[cont,1] <> ("") entao
         escreval("___________________")
         Escreva("Nome:")
         Escreval(linha[cont,1])
         Escreva("Sobrenome:")
         Escreval(linha[cont,2])
         Escreva("NUMERO: ")
         Escreval(linha[cont,3] )
         LISTAVAZIA <- falso

     fimse

   fimpara
SE LISTAVAZIA = VERDADEIRO entao
   eSCREVAL("Lista vazia!")
fimse
   escreval("___________________")
   Escreval("Deseja voltar ao inicio: [S/N]")
   leia(resp)
ate  resp = "S"

Se  resp = "S" entao
   home()
Fimse
fimprocedimento


inicio
contc  <-   0
home()
fimalgoritmo


