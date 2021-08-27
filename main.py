from clienteDAO import ClienteDAO

pg_user = "postgres" #usuário do postgre
pg_password = "root" #senha do servidor
pg_port="5432" #porta do servidor
pg_database = "venda_colchoes" #nome do banco de dados

def main():
    menu_listar_todos_clientes()

def menu_listar_todos_clientes():
    clienteDAO = ClienteDAO(pg_user, pg_password, pg_port, pg_database)
    clientes = clienteDAO.lista_todas()
    for c in clientes:
        print("*** CPF: "+ str(c.cpf) + " - Nome: " + c.nome + " - Endereço: " + c.endereco + " - Email: " + c.email + " ***")
    print("*** " + str(len(clientes)) + " cliente(s) cadastrado(s) ***")

if __name__ == "__main__":
    main()
