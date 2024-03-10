#INCLUDE "PROTHEUS.CH"





USER FUNCTION zCadPessoa()

    Local oPessoa 
    Local cNome := "LUIZ"
    Local dNascimento := sTod("19970907")


    // Instanciando a class atraves do objeto pessoa 

    oPessoa := zPessoa():New(cNome, dNascimento)

    // Chamando um metodo da classe

    oPessoa:MostraIdade()




return 
