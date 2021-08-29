from produto import Produto
from clienteDAO import ClienteDAO
from filialDAO import FilialDAO
from produtoDAO import ProdutoDAO
from funcionarioDAO import FuncionarioDAO
from produtoDAO import ProdutoDAO

#variáveis para conexão com o banco de dados
pg_user = "postgres" #usuário do postgre
pg_password = "root" #senha do servidor
pg_port="5432" #porta do servidor
pg_database = "venda_colchoes" #nome do banco de dados

def main():
    #listar_todos_clientes()
    #listar_todas_filiais()
    #listar_todos_produtos()
    #listar_estoque("Loja1")
    #listar_funcionarios()
    #mudar_valor("Boston", 1420)
    #mudar_estoque("Loja1", 25, "Boston")
    #adicionar_produto("Phoenix", "Heval", "Mola", 2, "1,93 x 2,03 m", 3500)
    #remover_produto("Phoenix")
    #adicionar_cliente("05304506818", "Francisco Junior Souza", "juninreidelas@gmail.com", "631-1 Tapera")
    #remover_cliente("Francisco Junior Souza")
    #adicionar_funcionario("58648726818", 'Cleison Pires Leite', 'Vendedor', '1502')
    #remover_funcionario("Cleison Pires Leite")
    pass

#Funções de DELETE
def remover_produto(nome):
    produtoDAO = ProdutoDAO(pg_user, pg_password, pg_port, pg_database)
    sucesso = produtoDAO.remover(nome)
    if sucesso:
        print("*** " + nome + " removido com sucesso ***")
    else:
        print("*** Não foi possivel remover" + nome + " ***")

def remover_cliente(nome):
    clienteDAO = ClienteDAO(pg_user, pg_password, pg_port, pg_database)
    sucesso = clienteDAO.remover(nome)
    if sucesso:
        print("*** Cliente:" + nome + " removido com sucesso ***")
    else:
        print("*** Não foi possivel remover o cliente:" + nome + " ***")

def remover_funcionario(nome):
    funcionarioDAO = FuncionarioDAO(pg_user, pg_password, pg_port, pg_database)
    sucesso = funcionarioDAO.remover(nome)
    if sucesso:
        print("*** Funcionário:" + nome + " removido com sucesso ***")
    else:
        print("*** Não foi possivel remover o funcionário:" + nome + " ***")

#Funções de INSERT
def adicionar_produto(nome, marca, descricao, fornecedor, medida, valor):
    produtoDAO = ProdutoDAO(pg_user, pg_password, pg_port, pg_database)
    sucesso = produtoDAO.inserir(nome, marca, descricao, fornecedor, medida, valor)
    if sucesso:
        print("*** " + nome + " adicionado como produto com sucesso ***")
    else:
        print("*** Não foi possivel inserir" + nome + " como produto ***")

def adicionar_cliente(cpf, nome, email, endereco):
    clienteDAO = ClienteDAO(pg_user, pg_password, pg_port, pg_database)
    sucesso = clienteDAO.inserir(cpf, nome, email, endereco)
    if sucesso:
        print("*** " + nome + " adicionado como cliente com sucesso ***")
    else:
        print("*** Não foi possivel inserir" + nome + " como cliente ***")

def adicionar_funcionario(cpf, nome, cargo, salario):
    funcionarioDAO = FuncionarioDAO(pg_user, pg_password, pg_port, pg_database)
    sucesso = funcionarioDAO.inserir(cpf, nome, cargo, salario)
    if sucesso:
        print("*** " + nome + " adicionado como funcionário com sucesso ***")
    else:
        print("*** Não foi possivel inserir" + nome + " como funcionário ***")

#Funções UPDATE
def mudar_valor(nome_produto, novo_valor):
    produtoDAO = ProdutoDAO(pg_user, pg_password, pg_port, pg_database)
    sucesso = produtoDAO.atualizar_valor(nome_produto, novo_valor)
    if sucesso:
        print("*** Preço de " + nome_produto + " atualizado com sucesso ***")
    else:
        print("*** Não foi possivel atualizar o preço de " + nome_produto + "  ***")

def mudar_estoque(nome_filial, nova_quantidade, nome_produto):
    filialDAO = FilialDAO(pg_user, pg_password, pg_port, pg_database)
    sucesso = filialDAO.atualizar_estoque(nome_filial, nova_quantidade, nome_produto)
    if sucesso:
        print("*** Quantidade de " + nome_produto + " atualizada em " + nome_filial + " com sucesso ***")
    else:
        print("*** Não foi possivel atualizar a quantidade de" + nome_produto +  " em " + nome_filial + " ***")

#Funções de SELECT
def listar_funcionarios():
    funcionarioDAO = FuncionarioDAO(pg_user, pg_password, pg_port, pg_database)
    funcionarios = funcionarioDAO.lista_todas()
    for f in funcionarios:
        print("*** Nome:"+ f.nome + " CPF:" + str(f.cpf) + " - Cargo:" + f.cargo + " - Salário:R$" + str(f.salario) + " ***")
    print("*** " + str(len(funcionarios)) + " funcionarios cadastrados ***")

def listar_estoque(nome_filial):#lista todos os produtos cadastrados
    filialDAO = FilialDAO(pg_user, pg_password, pg_port, pg_database)
    estoque = filialDAO.lista_estoque(nome_filial)
    for e in estoque:
        print("*** Nome:" + e.nome + " - Quantidade:" + str(e.quantidade) + " ***")
    print("*** " + str(len(estoque)) + " produtos diferentes em estoque em " + nome_filial + " ***")

def listar_todos_produtos():#lista todos os produtos cadastrados
    produtoDAO = ProdutoDAO(pg_user, pg_password, pg_port, pg_database)
    produtos = produtoDAO.lista_todas()
    for p in produtos:
        print("*** ID:" + str(p.id) + " - Nome:" + p.nome + " - Marca:" + p.marca + " - Descrição:" + p.descricao + " - ID Fornecedor:" + str(p.fornecedor) + " - Medidas:" + p.medida + " Valor:" + str(p.valor) + " ***")
    print("*** " + str(len(produtos)) + " produtos cadastrados ***")

def listar_todas_filiais():#lista todas as filiais cadastradas
    filialDAO = FilialDAO(pg_user, pg_password, pg_port, pg_database)
    filiais = filialDAO.lista_todas()
    for f in filiais:
        print("*** ID:" + str(f.id) + " - Nome:" + f.nome + " - Endereço:" + f.endereco + " - Email:" + f.email + " ***")
    print("*** " + str(len(filiais)) + " filiais cadastradas ***")

def listar_todos_clientes():#lista todos os clientes cadastrados
    clienteDAO = ClienteDAO(pg_user, pg_password, pg_port, pg_database)
    clientes = clienteDAO.lista_todas()
    for c in clientes:
        print("*** CPF: "+ str(c.cpf) + " - Nome: " + c.nome + " - Endereço: " + c.endereco + " - Email: " + c.email + " ***")
    print("*** " + str(len(clientes)) + " cliente(s) cadastrado(s) ***")

if __name__ == "__main__":
    main()
