Algoritmo "Destino Certo"
//
//
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/07/2023
Var
   // Seção de Declarações das variáveis
   clientes: vetor[1..100] de caractere
   cpfs: vetor[1..100] de inteiro
   destinos: vetor[1..100] de caractere
   qtdClientes,qtdDestinos,opcao,cpf: inteiro
   cliente, destino: caracter
   i: inteiro

funcao cadastrarCliente(nome:caractere): logico
inicio
   se qtdClientes < 100 entao
      qtdClientes <- qtdClientes + 1
      clientes[qtdClientes] <- nome
      cpfs[qtdClientes] <- cpf
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao
funcao cadastrarDestino(local: caractere): logico
inicio
   se qtdDestinos < 100 entao
      qtdDestinos <- qtdDestinos + 1
      destinos[qtdDestinos] <- local
      retorne verdadeiro
   senao
      retorne falso
   fimse
fimfuncao
procedimento consultarClientes
inicio
   escreval("---- Clientes Cadastrados ----")
   para i de 1 ate qtdClientes faca
      escreval(i, ". ", clientes[i])
   fimpara
   escreval("-----------------------------")
fimprocedimento
procedimento consultarDestinos
inicio
   escreval("---- Destinos Cadastrados ----")
   para i de 1 ate qtdDestinos faca
      escreval(i, ". ", destinos[i])
   fimpara
   escreval("-----------------------------")
fimprocedimento
inicio
   qtdClientes <- 0
   qtdDestinos <- 0
   inteiro opcao

   repita
      escreval
      escreval("============= Seja Bem Vindo ao Destino Certo ===============")
      escreval("=========================== Menu ====================")
      escreval
      escreval("Selecione a opção desejada:")
      escreval
      escreval("1 - Cadastrar cliente")
      escreval("2 - Cadastrar destino")
      escreval("3 - Consultar clientes")
      escreval("4 - Consultar destinos")
      escreval("0 - Sair")
      escreva("Escolha uma opcão: ")
      leia(opcao)
      escolha opcao
      caso 1
         escreva("Digite o nome do cliente: ")
         leia(cliente)
         Escreva("Digite o CPF do cliente: ")
         leia(cpf)
         se cadastrarCliente(cliente) entao
            escreval("Cliente cadastrado com sucesso!")
         senao
            escreval("Nao foi possivel cadastrar o cliente. Limite de clientes atingido.")
         fimse
      caso 2
         escreva("Digite o destino: ")
         leia(destino)
         se cadastrarDestino(destino) entao
            escreval("Destino cadastrado com sucesso!")
         senao
            escreval("Nao foi possivel cadastrar o destino. Limite de destinos atingido.")
         fimse
      caso 3
         limpatela
         escreval("Lista de Clientes cadastrados:")
         escreval("")
         para i de 1 ate qtdClientes faca
            escreval("Nome:" , clientes[i])
            escreval("CPF:" , cpfs[i])
            escreval("")
         fimpara

      caso 4
         consultarDestinos
      caso 0
         escreval(" A Destino Certo Agradece até logo...")
      outrocaso
         escreval("Opcão invalida. Tente novamente.")
      fimescolha
   ate opcao = 0
   escreval("*******")
   escreval("*******")
   escreval("*******")
   escreval(" *Boa Viagem*  ")
   escreval("*******")
   escreval("*******")
   escreval("*******")
Fimalgoritmo