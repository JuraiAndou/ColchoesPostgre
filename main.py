from funcionario import Funcionario
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

class Menu():
    def __init__(self):
        pass

    def start(self):
        print("======================================")
        print("------|Sistema Colchão Genérico|------")
        print("======================================")
        print("--------------------------------------")
        print("[1]\tCadastro De Funcionários")
        print("--------------------------------------")
        print("[2]\tCadastro De Clientes")
        print("--------------------------------------")
        print("[3]\tCadastro De Produtos")
        print("--------------------------------------")
        print("[4]\tCadastro De Filiáis")
        print("--------------------------------------")
        print("[0]\tSair da Aplicação")
        print("--------------------------------------")

        cmd = int(input("Digite uma opção [0-4]: "))
        if cmd == 0:
            exit()
        elif cmd == 1:
            self.cadastro_funcionario()
        elif cmd == 2:
            self.cadastro_clientes()
        elif cmd == 3:
            self.cadastro_produtos()
        elif cmd == 4:
            self.cadastro_filiais()
        else:
            print("\n\n\n***\tComanado inválido\t***\n")
            self.start()

    #Cadastro de funcionário
    def cadastro_funcionario(self):
        print("======================================")
        print("--------|Cadastro Funcionários|-------")
        print("======================================")
        print("--------------------------------------")
        print("[1]\tLista de funcionários")
        print("--------------------------------------")
        print("[2]\tAdicionar Funcionários")
        print("--------------------------------------")
        print("[3]\tRemover Funcionários")
        print("--------------------------------------")
        print("[4]\tVoltar")
        print("--------------------------------------")
        print("[0]\tSair da Aplicação")
        print("--------------------------------------")

        cmd = int(input("Digite uma opção [0-4]: "))
        if cmd == 0:
            exit()
        elif cmd == 1:
            listar_todos_funcionarios()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 2:
            self._adicionar_funcionario()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 3:
            self._remover_funcionario()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 4:
            self.start()
        else:
            print("\n\n\n***\tComanado inválido\t***\n")
            self.cadastro_funcionario()
    def _adicionar_funcionario(self):
        print("======================================")
        print("--------|Adicionar Funcionário|-------")
        print("======================================")
        print("--------------------------------------")
        cpf = input("CPF do funcionário: ")
        nome = input("Nome do funcionário: ")
        cargo = input("Cargo do funcionário: ")
        salario = int(input("Salario do funcionário: "))
        adicionar_funcionario(cpf, nome, cargo, salario)
    def _remover_funcionario(self):
        print("======================================")
        print("---------|Remover Funcionário|--------")
        print("======================================")
        print("--------------------------------------")
        print("***\tLista de funcionários\t***")
        listar_todos_funcionarios()
        print("--------------------------------------")
        nome = input("Nome do funcionário a ser deletado: ")
        remover_funcionario(nome)
    
    #Cadastro de clientes
    def cadastro_clientes(self):
        print("======================================")
        print("---------|Cadastro de Clientes|-------")
        print("======================================")
        print("--------------------------------------")
        print("[1]\tLista de Clientes")
        print("--------------------------------------")
        print("[2]\tAdicionar Cliente")
        print("--------------------------------------")
        print("[3]\tRemover Cliente")
        print("--------------------------------------")
        print("[4]\tVoltar")
        print("--------------------------------------")
        print("[0]\tSair da Aplicação")
        print("--------------------------------------")

        cmd = int(input("Digite uma opção [0-4]: "))
        if cmd == 0:
            exit()
        elif cmd == 1:
            listar_todos_clientes()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 2:
            self._adicionar_cliente()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 3:
            self._remover_cliente()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 4:
            self.start()
        else:
            print("\n\n\n***\tComanado inválido\t***\n")
            self.cadastro_funcionario()
    def _adicionar_cliente(self):
        print("======================================")
        print("----------|Adicionar Cliente|---------")
        print("======================================")
        print("--------------------------------------")
        cpf = input("CPF do cliente: ")
        nome = input("Nome do cliente: ")
        email = input("Email do cliente: ")
        endereco = input("Endereço do cliente: ")
        adicionar_cliente(cpf, nome, email, endereco)
    def _remover_cliente(self):
        print("======================================")
        print("---------|Remover Funcionário|--------")
        print("======================================")
        print("--------------------------------------")
        print("***\tLista de Clientes\t***")
        listar_todos_clientes()
        print("--------------------------------------")
        nome = input("Nome do cliente a ser deletado: ")
        remover_cliente(nome)

    #Cadastro de produtos
    def cadastro_produtos(self):
        print("======================================")
        print("----------|Cadastro Produtos|---------")
        print("======================================")
        print("--------------------------------------")
        print("[1]\tListar Produtos")
        print("--------------------------------------")
        print("[2]\tAdicionar Produto")
        print("--------------------------------------")
        print("[3]\tRemover Produto")
        print("--------------------------------------")
        print("[4]\tAtualizar Valor")
        print("--------------------------------------")
        print("[5]\tVoltar")
        print("--------------------------------------")
        print("[0]\tSair da Aplicação")
        print("--------------------------------------")

        cmd = int(input("Digite uma opção [0-5]: "))
        if cmd == 0:
            exit()
        elif cmd == 1:
            listar_todos_produtos()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 2:
            self._adicionar_produto()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 3:
            self._remover_produto()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 4:
            self._atualizar_preco()
        elif cmd == 5:
            self.start()
        else:
            print("\n\n\n***\tComanado inválido\t***\n")
            self.cadastro_produtos()
    def _adicionar_produto(self):
        print("======================================")
        print("---------|Adicionar Produto|----------")
        print("======================================")
        print("--------------------------------------")
        nome = input("Nome do produto: ")
        marca = input("Marca do produto: ")
        descricao = input("Descrição do produto: ")
        fornecedor = self._check_fornecedor()
        medida = input("Medidas do produto: ")
        valor = int(input("Valor do produto: "))
        adicionar_produto(nome, marca, descricao, fornecedor, medida, valor)
    def _check_fornecedor(self):
        print("======================================")
        print("---------|Qual o fornecedor?|---------")
        print("======================================")
        print("--------------------------------------")
        print("[1]\tOrtobom")
        print("--------------------------------------")
        print("[2]\tHerval")
        print("--------------------------------------")
        print("[3]\tSimmons")
        cmd = int(input("Digite uma opção [1-3]: "))
        if cmd == 1 or cmd == 2 or cmd == 3:
            return cmd
        else:
            print("*** Comando invalido ***")
            exit()
    def _remover_produto(self):
        print("======================================")
        print("----------|Remover Produto|-----------")
        print("======================================")
        print("--------------------------------------")
        print("***\tLista de Produtos\t***")
        listar_todos_produtos()
        print("--------------------------------------")
        nome = input("Nome do produto a ser removido: ")
        remover_produto(nome)
    def _atualizar_preco(self):
        print("======================================")
        print("-----------|Atualizar Preço|----------")
        print("======================================")
        print("--------------------------------------")
        print("***\tLista de Produtos\t***")
        listar_todos_produtos()
        print("--------------------------------------")
        nome = input("Nome do produto a atualizar: ")
        valor = int(input("Novo valor: "))
        mudar_valor(nome, valor)

    #Cadastro de filiáis
    def cadastro_filiais(self):
        print("======================================")
        print("----------|Cadastro Filiáis|---------")
        print("======================================")
        print("--------------------------------------")
        print("[1]\tListar Filiais")
        print("--------------------------------------")
        print("[2]\tListar Estoque")
        print("--------------------------------------")
        print("[3]\tAtualizar quantidade em estoque")
        print("--------------------------------------")
        print("[4]\tVoltar")
        print("--------------------------------------")
        print("[0]\tSair da Aplicação")
        print("--------------------------------------")

        cmd = int(input("Digite uma opção [0-4]: "))
        if cmd == 0:
            exit()
        elif cmd == 1:
            listar_todas_filiais()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 2:
            self._listar_estoque()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 3:
            self._atualizar_quantidade()
            input("Presione Enter para sair...")
            exit()
        elif cmd == 4:
            self.start()
        else:
            print("\n\n\n***\tComanado inválido\t***\n")
            self.cadastro_produtos()
    def _listar_estoque(self):
        print("======================================")
        print("-----------|Listar Estoque|-----------")
        print("======================================")
        print("--------------------------------------")
        print("***\tLista de Filiais\t***")
        listar_todas_filiais()
        print("--------------------------------------")
        nome = input("Nome da filial: ")
        listar_estoque(nome)
    def _atualizar_quantidade(self):
        print("======================================")
        print("--------|Atualizar Quantidade|--------")
        print("======================================")
        print("--------------------------------------")
        print("***\tLista de Filiais\t***")
        listar_todas_filiais()
        print("--------------------------------------")
        nome = input("Nome da filial: ")
        print("***\tLista de Filiais\t***")
        listar_estoque(nome)
        print("--------------------------------------")
        produto = input("Nome do produto: ")
        quantidade = int(input("Quantidade: "))
        mudar_estoque(nome, quantidade, produto)

def main():
    menu = Menu()
    menu.start()
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
def listar_todos_funcionarios():
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
