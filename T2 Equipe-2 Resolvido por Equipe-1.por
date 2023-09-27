programa{
  real saldo = 0
  cadeia userDefault = "1"
  cadeia passDefault = "123"
  cadeia usuario, senha
  logico continuar
  logico tentarLogin = verdadeiro

  funcao inicio(){

    enquanto(tentarLogin){
      continuar = verdadeiro
      login()
    }

  }

  funcao login(){
    enquanto(verdadeiro){
      escreva("Digite sua conta: ")
      leia(usuario)
      escreva("Digite sua senha: ")
      leia(senha)
      se(usuario ==  userDefault e senha == passDefault){
        limpa()
        mainBanco()
      }senao{
        escreva("Credenciais incorretas, tente novamente!\n")
      }
    }
  }

  funcao mainBanco(){
    inteiro opcao

    enquanto(continuar){
      escreva("1. Depósito\n2. Saque\n3. Saldo\n4. Trocar senha\n5. Sair\n")
      leia(opcao)

      escolha(opcao){
        caso 1:
          limpa()
          deposito()
        pare
        caso 2:
          limpa()
          saque()
        pare
        caso 3:
          limpa()
          saldo()
        pare
        caso 4:
          limpa()
          trocarSenha()
        pare
        caso 5:
          sair()
        pare
      }
    }
  }

  funcao saque(){
    inteiro opcao
    real saque
    faca{
      escreva("Informe a quantia que você gostaria de sacar: ")
      leia(saque)
      se(saque > saldo){
        limpa()
        escreva("Saldo insuficiente.\n")
      }
    }enquanto(saque > saldo)
    saldo -= saque
    escreva("Você agora tem R$", saldo, " na sua conta\nVocê gostaria de fazer alguma outra operação?\n1. Sim\n2. Não\n")
    leia(opcao)
    enquanto(verdadeiro){
      se(opcao == 1){
        limpa()
        retorne
      }senao se(opcao == 2){
        sair()
        retorne
      }senao{
        escreva("<Opção inválida>\n")
        escreva("Você gostaria de fazer alguma outra operação?\n1. Sim\n2. Não\n")
        leia(opcao)
      }
    }
  }

  funcao deposito(){
    real deposito
    inteiro opcao 

    faca{
      escreva("Informe a quantia que você gostaria de depositar: ")
      leia(deposito)
      se(deposito <= 0){
        limpa()
        escreva("Erro, tente novamente.\n")
      }
    }enquanto(deposito <= 0)

    saldo += deposito
    escreva("Você agora tem R$", saldo, " na sua conta\nVocê gostaria de fazer alguma outra operação?\n1. Sim\n2. Não\n")
    leia(opcao)
  
    enquanto(verdadeiro){
      se(opcao == 1){
        limpa()
        retorne
      }senao se(opcao == 2){
        sair()
        retorne
      }senao{
        escreva("<Opção inválida>\n")
        escreva("Você gostaria de fazer alguma outra operação?\n1. Sim\n2. Não\n")
        leia(opcao)
      }
    }
  }

  funcao saldo(){
    inteiro opcao

    escreva("Saldo disponível: R$", saldo, "\nVocê gostaria de fazer alguma outra operação?\n1. Sim\n2. Não\n")
    leia(opcao)
  
    enquanto(verdadeiro){
      se(opcao == 1){
        limpa()
        retorne
      }senao se(opcao == 2){
        sair()
        retorne
      }senao{
        escreva("<Opção inválida>\n")
        escreva("Você gostaria de fazer alguma outra operação?\n1. Sim\n2. Não\n")
        leia(opcao)
      }
    }
  }

  funcao trocarSenha(){
    cadeia novaSenha
    escreva("Digite sua nova senha: ")
    leia(novaSenha)
    passDefault = novaSenha
    
    limpa()
    escreva("Senha atualizada com sucesso!\n")
    continuar = falso
  }

  funcao sair(){
    limpa()
    escreva("Obrigado por utilizar nossos serviços.\n")
    continuar = falso
    tentarLogin = falso
  }
}
