#INCLUDE "PROTHEUS.CH"




Static cTesteSta := "" // variavel ficará disponivel para todo o fonte 



USER FUNCTION cEscopo()


Local aArea := FWGetArea()

// Variaveis locais 

Local nVar1 := 1
local nVar2 := 10
Local nVar3 := 15


// Variaveis privadas  

Private cTeste  := "Teste pv"
cTeste2 := "Teste2 pv"


// Variaveis publicas 

Public __cTeste := "Daniel" // criar sempre com dois underline 
Public __cTeste2 := "Luiz"


// Chamando outra função 


fEscopo(nVar1, @nVar2) /* @ indica que estou passando a variavel por referencia
qualquer modificação que essa variavel sofrer na função que está sendo chamada
atualizará na função de origem
*/ 

Alert(nVar2)
Alert("Public"+__cTeste + "    "+__cTeste2)
FWRestArea(aArea)


Return 


STATIC FUNCTION fEscopo(nVar1, nVar2, nVar3)

Local aArea := FWGetArea()


// Variaveis Locais 

Local __cTeste2 := "TESTE 2"


// Variaveis default 

Default nVar1 := 0 // se os valores dos parametros vierem nullos, esses valores serão atribuidos 
Default nVar2 := 0
Default nVar3 := 0


// Alterando valor 

nVar2 += 10


// Mostrando valor da variavel privada 

Alert("Private "+cTeste)

// setando valor da variavel publica para demonstrar o riscos 

__cTeste := "TESTE1"


FWRestArea(aArea)



return 



