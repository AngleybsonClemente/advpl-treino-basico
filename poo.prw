#INCLUDE "PROTHEUS.CH"






Class zPessoa


    Data cNome 
    Data nIdade 
    Data dNascimento // casos queira deixar privada usa o HIDDEN 


    // Metodos 

    Method New() CONSTRUCTOR // metodo construtor
    Method MostraIdade()

ENDCLASS



Method New(cNome, dNasimento) Class zPessoa

        // atribuindo valores aos atributos dos objetos instanciados 
        ::cNome := cNome
        ::dNascimento := dNascimento
        ::nIdade := fCalcIdade(dNascimento)


Return self



Method MostraIdade() Class zPessoa

    Local cMsg := ""

    // Criando e mostrando mensagem 
    cMsg := "A <b>pessoa</b>"+::cNome+"tem "+CValToChar(::nIdade)+" idade!"
    MsgInfo(cMsg, "Atenção")


Return 

    Static Function fCalcIdade(dNascimento)
        Local nIdade 


        nIdade := DateDiffYear(dDataBase, dNascimento)



    Return nIdade



