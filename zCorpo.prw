#INCLUDE "PROTHEUS.CH" // Biblioteca 

#DEFINE ENTER CHR(13) + CHR(10) // constante para pular 


User FUNCTION xCorpo()

Local aArea := FWGetArea() // cria um backup para outros processamentos 
Local cHora := Time() // pega a hora atual do sistmaa 
Local cData := Date() // pega data atual 


MsgInfo("A hora atual do sistema é "+cValtochar(cData)+" "+cHora, "Hora atual")

    FWRestArea(aArea)

return  
