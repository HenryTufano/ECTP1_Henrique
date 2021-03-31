import objs

import strutils
import strformat

var 
  fornecedores:seq[Fornecedor]
  clientes:seq[Cliente]
  produtos:seq[Produto]

proc linha() =
  echo "==========================================================================="

proc menu*() =
  echo """
  ADMIN - V1 - SEU JOAQUIM
  [1] - CADASTRAR FORNECEDOR
  [2] - CADASTRAR CLIENTE
  [3] - CADASTRAR PRODUTO
  [4] - LISTAR
  [5] - SAIR
	"""
  linha()

  linha()

proc subMenu*()= 
  linha()
  echo """
    ADMIN - SUBMENU
    [1] - LISTAR FORNECEDORES
    [2] - LISTAR CLIENTES
    [3] - LISTAR PRODUTOS
    [4] - VOLTAR AO MENU ANTERIOR"""
      # submenu
  linha()

proc adicionaFornecedor*() = 
  linha()
  var fornecedor = Fornecedor()
  echo "Bem vindo ao Cadastro de fornecedor" 
  echo "Digite o nome do Fornecedor"
  fornecedor.nomeFantasia=readline(stdin)

  echo "Digite o CNPJ do Fornecedor"
  fornecedor.cnpj=readline(stdin)

  echo "Digite o endereco do Fornecedor"
  fornecedor.endereco=readline(stdin)

  
  fornecedores.add(fornecedor)
  echo "Fornecedor cadastrado com sucesso!!"
  linha()

  

proc adicionaCliente*() = 
  linha()
  var cliente = Cliente()
  echo "Bem vindo ao Cadastro de Cliente" 
  echo "Digite o nome do Cliente"

  echo "Digite o nome do Cliente"
  cliente.nomeFantasia=readline(stdin)

  echo "Digite o CNPJ do Cliente"
  cliente.cnpj=readline(stdin)

  echo "Digite o endereco do Cliente"
  cliente.endereco=readline(stdin)

  echo "Digite a categoria do Cliente"
  echo  "Digite 1 Para Normal"
  echo  "Digite 2 Para Premium"
  echo  "Digite 3 Para Master"
  cliente.categoria=readline(stdin)
  case cliente.categoria
    of "1": cliente.categoria="Normal"
    of "2": cliente.categoria="Premium"
    of "3": cliente.categoria="Master"
    else: echo "Opção inválida"   

  clientes.add(cliente)
  echo "Cliente cadastrado com sucesso!!"
  linha()

proc adicionaProduto*() = 
  linha()
  var produto = Produto()
  echo "Bem vindo ao Cadastro de Produto" 
  echo "Digite o código do Produto"
  produto.codigo= readline(stdin)

  echo "Digite a descrição do Produto"
  produto.descricao=readline(stdin)

  echo "Digite o valor"
  produto.valor= readline(stdin)

  produtos.add(produto)
  echo "Produto cadastrado com sucesso!!"
  linha()

proc listaFornecedores*() =
  for fornecedor in fornecedores :
    echo "Nome : " & fornecedor.nomeFantasia
    echo "CNPJ : " & fornecedor.cnpj
    echo "Endereço : " & fornecedor.endereco
    

proc listaClientes*() =
  for cliente in clientes :
    echo "Nome : " & cliente.nomeFantasia
    echo "CNPJ : " & cliente.cnpj
    echo "Endereço : " & cliente.endereco
    echo "Categoria do Cliente: " & cliente.categoria

proc listaProdutos*() = 
    for produto in produtos:
      echo produto.codigo
      echo produto.valor
      echo produto.descricao