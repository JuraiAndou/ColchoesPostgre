import traceback
import psycopg2
from filial import Filial
from produto_estoque import Produto_Estoque

class FilialDAO(object):
    
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
            cursor.execute("SELECT id, endereco, email, nome FROM filiais")
            registros = cursor.fetchall()
            for r in registros:
                f = Filial()
                f.id = r[0]
                f.endereco = r[1]
                f.email = r[2]
                f.nome = r[3]
                resultados.append(f)
        except(Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return resultados
    
    def lista_estoque(self, nome_filial):
        resultados = []
        try:
            connection = psycopg2.connect(user=self._usr, password=self._psw, port=self._port, database=self._db)
            cursor = connection.cursor()
            cursor.execute("SELECT produto.nome, quantidade FROM estoque, produto WHERE filial_id = (SELECT id FROM filiais Where nome = \'" + nome_filial + "\') and produto.id = produto_id")
            registros = cursor.fetchall()
            for r in registros:
                pe = Produto_Estoque()
                pe.nome = r[0]
                pe.quantidade = r[1]
                resultados.append(pe)
        except(Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return resultados
