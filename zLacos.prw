#INCLUDE "PROTHEUS.CH"






USER FUNCTION zLacos()
Local aArea := FWGetArea()
Local nValor := 1
Local cNome := ""


For nValor := 0 to 10 step +2
Alert("For ++: " +CValToChar(nValor))
next 

// Exempo de while 


while nValor != 10
    nValor++
    Alert("While ++: " +CValToChar(nValor))
endDo 


while nValor != 10 .and. cNome != "Luiz"
    nValor++
    if nValor == 5
        cNome := "Luiz"
    end
    Alert("While 2 ++: " +CValToChar(nValor))
endDo 
    



FWRestArea(aArea)




Return 
