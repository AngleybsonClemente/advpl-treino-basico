#INCLUDE "PROTHEUS.CH"





USER FUNCTION zReclock()

Local aArea := FWGetArea()


// Abrindo a tabela 


DBSelectArea("SB1")
SB1->(DBSetOrder(1))
SB1->(DbGoTop())

Begin Transaction 

IF SB1->(DbSeek(FWxfilial("SB1")+ "08765"))

    RecLock("SB1", .F.) // trava a tabela para alterar o produto 
        B1_DESC := SB1->B1_DESC + "."
    SB1->(MsUnlock())


ENDIF 

    RecLock("SB1", .T.) // trava a tabela para incluir a filial 
    
        B1_FILIAL := FWxfilial("SB1")

    SB1->(MsUnlock())

    //DisarmTransaction() ao usar esse o toda a munipulação de dados é cancelada 
end Transaction 


FWRestArea(aArea)

RETURN 
