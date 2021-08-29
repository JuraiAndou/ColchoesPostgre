from filial import Filial
from clienteDAO import ClienteDAO
from filialDAO import FilialDAO
from produtoDAO import ProdutoDAO

#variáveis para conexão com o banco de dados
pg_user = "postgres" #usuário do postgre
pg_password = "root" #senha do servidor
pg_port="5432" #porta do servidor
pg_database = "venda_colchoes" #nome do banco de dados

def main():
    menu_listar_todos_clientes()
    menu_listar_todas_filiais()
    menu_listar_todos_produtos()
    menu_listar_estoque("Loja4")

def menu_listar_estoque(nome_filial):#lista todos os produtos cadastrados
    filialDAO = FilialDAO(pg_user, pg_password, pg_port, pg_database)
    estoque = filialDAO.lista_estoque(nome_filial)
    for e in estoque:
        print("*** Nome:" + e.nome + " - Quantidade:" + e.quantidade + " ***")
    print("*** " + str(len(estoque)) + " produtos diferentes em estoque")

def menu_listar_todos_produtos():#lista todos os produtos cadastrados
    produtoDAO = ProdutoDAO(pg_user, pg_password, pg_port, pg_database)
    produtos = produtoDAO.lista_todas()
    for p in produtos:
        print("*** ID:" + str(p.id) + " - Nome:" + p.nome + " - Marca:" + p.marca + " - Descrição:" + p.descricao + " - ID Fornecedor:" + str(p.fornecedor) + " - Medidas:" + p.medida + " Valor:" + str(p.valor) + " ***")
    print("*** " + str(len(produtos)) + " produtos cadastradas")

def menu_listar_todas_filiais():#lista todas as filiais cadastradas
    filialDAO = FilialDAO(pg_user, pg_password, pg_port, pg_database)
    filiais = filialDAO.lista_todas()
    for f in filiais:
        print("*** ID:" + str(f.id) + " - Nome:" + f.nome + " - Endereço:" + f.endereco + " - Email:" + f.email + " ***")
    print("*** " + str(len(filiais)) + " filiais cadastradas")

def menu_listar_todos_clientes():#lista todos os clientes cadastrados
    clienteDAO = ClienteDAO(pg_user, pg_password, pg_port, pg_database)
    clientes = clienteDAO.lista_todas()
    for c in clientes:
        print("*** CPF: "+ str(c.cpf) + " - Nome: " + c.nome + " - Endereço: " + c.endereco + " - Email: " + c.email + " ***")
    print("*** " + str(len(clientes)) + " cliente(s) cadastrado(s) ***")

if __name__ == "__main__":
    main()
