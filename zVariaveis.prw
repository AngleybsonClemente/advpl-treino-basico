#INCLUDE "PROTHEUS.CH"
#DEFINE ENTER CHR(13)+CHR(10)



USER FUNCTION zVariaveis 

    Local aArea := FWGetArea()
    local nValor := 0
    local dData := Date()
    Local  lTeste := .T.
    Local cTexto := "Luiz lind�o"
    Local oOjeto := TFont():New("Arial")
    Local xInfo := 0 // variavel que pode receber qualquer tipo
    Local aDados := {"Dados","Luiz","Pozzo"}
    Local bBloco1 := {|| nValor := 1,;
                    Alert("Valor � igual a"+cValtochar(nValor))} // server para fazer varias a��es quando acioando 
                    
    Local bBloco2 := {|nValor| nValor += 2,;
                    Alert("O valor � igual a"+CValToChar(nValor))} // recebendo a variavel como parametro no bloco e manipulando 


    // Executando o bloco 
    Eval(bBloco1)
    Eval(bBloco2, 5)// chamando o bloco de codigo e passando o valor no parametro 

FWRestArea(aArea)


return 
