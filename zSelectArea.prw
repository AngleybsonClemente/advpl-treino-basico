#INCLUDE "PROTHEUS.ch"



USER FUNCTION zSelecArea()

Local aArea := FWGetArea()
Local cMens := ""




if Select("SB1") > 0

    MsgStop("Tabela já aberta")

ENDIF

        DbSelectArea("SB1") // selecionado(abrindo) a tabela SB1
        SB1->(DbSetOrder(1)) // Ordendando a tablea pelo indicie 1
        SB1->(DBGoTop()) // posicionando no inicio no topo da tablea 


        IF SB1->(DbSeek(FWxfilial("SB1") + "08765")) // verificando se o produto existe na filial logada

                Alert(SB1->B1_DESC) 
        endif 


        SB1->(DBGoTop()) // posicionando novamente no inicio no topo da tabela 

        WHILE !SB1->(EOF()) // enquanto não for final da tabela 

                cMens += AllTrim(SB1->DESC)+";"+CHR(10) + CHR(13)

                SB1->(DBskip()) // passa para o próximo registro 

        END


        Aviso(cMens)

       
FWRestArea(aArea)
Return 
