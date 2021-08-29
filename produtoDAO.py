import traceback
import psycopg2
from produto import Produto

class ProdutoDAO(object):
    
    def __init__(self, user : str, password : str, port : str, database : str):
        self._usr = user
        self._psw = password
        self._port = port
        self._db = database

    def lista_todas(self):
        resultados = []
        try:
            connection = psycopg2.connect(user=self._usr, password=self._psw, port=self._port, database=self._db)
            cursor = connection.cursor()
            cursor.execute("SELECT id, nome, marca, descricao, fornecedor_id, medida, valor FROM produto")
            registros = cursor.fetchall()
            for r in registros:
                p = Produto()
                p.id = r[0]
                p.nome = r[1]
                p.marca = r[2]
                p.descricao = r[3]
                p.fornecedor = r[4]
                p.medida = r[5]
                p.valor = r[6]
                resultados.append(p)
        except(Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return resultados
    def atualizar_valor(self, nome_produto, novo_valor):
        sucesso = False
        try:
            connection = psycopg2.connect(user=self._usr, password=self._psw, port=self._port, database=self._db)
            cursor = connection.cursor()
            cursor.execute("UPDATE produto SET valor = " + str(novo_valor) + " WHERE produto.nome = \'" + nome_produto + "\'")
            connection.commit()
            sucesso = (cursor.rowcount == 1)
        except (Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return sucesso