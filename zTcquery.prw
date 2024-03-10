#INCLUDE "PROTHEUS.CH"
#INCLUDE "TOPCONN.CH"
#DEFINE ENTER CHR(10)+CHR(13)



USER FUNCTION zQuery()

Local aArea := FWGetArea()
Local cQuery:= ""
Local cAlias := GetNextAlias()

    cQuery := "   SELECT        "                     +ENTER 
    cQuery += "     B1_COD,     "                     +ENTER 
    cQuery += "     B1_DESC "                         +ENTER 
    cQuery += "     FROM "+RetSQLName("SB1")+" SB1  " +ENTER 
    cQuery += "     WHERE "                           +ENTER
    cQuery += " SB1.D_E_L_E_T_ = ''"                  +ENTER
    cQuery := ChangeQuery(cQuery) // faz conversão da query dependendo do banco que você utiliza
   DbUseArea(.T., "TOPCONN", TCGENQRY(,,cQuery), cAlias, .F., .T.)


    WHILE !cAlias->(EOF())

        Alert("Descrição do produto principal: "+cAlias->B1_DESC)

    END
        cAlias->(DbCloseArea())

FWRestArea(aArea)

RETURN 





