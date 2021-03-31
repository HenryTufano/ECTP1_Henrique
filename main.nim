import utils
import objs
import strutils
import strformat
var x = "1"
while x != "5":
  
  menu()
  var x = readline(stdin)
  case x
    of "1": adicionaFornecedor()
    of "2": adicionaCliente()
    of "3": adicionaProduto()
    of "4": subMenu()
    of "5": echo "Até mais"
    else: echo "Opção inválida" 
    
  var y = readline(stdin) 
  case y
      of "1": listaFornecedores()
      of "2": listaClientes()
      of "3": listaProdutos()          
      else: echo "Opção inválida" 
        
  