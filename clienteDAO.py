import traceback
import psycopg2
from cliente import Cliente

class ClienteDAO(object):

    def __init__(self, user : str, password : str, port : str, database : str):
        self._usr = user
        self._psw = password
        self._port = port
        self._db = database 

    #lisata todos os clientes
    def lista_todas(self):
        resultados = []
        try: 
            connection = psycopg2.connect(user=self._usr, password=self._psw, port=self._port, database=self._db)
            cursor = connection.cursor()
            cursor.execute("SELECT cpf, nome, endereco, email FROM cliente")
            registros = cursor.fetchall()
            for r in registros:
                p = Cliente()
                p.cpf = r[0]
                p.nome = r[1]
                p.endereco = r[2]
                p.email = r[3]
                resultados.append(p)
        except(Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return resultados
    
    def inserir(self, cpf, nome, email, endereco):
        sucesso = False
        try:
            connection = psycopg2.connect(user=self._usr, password=self._psw, port=self._port, database=self._db)
            cursor = connection.cursor()
            cursor.execute("INSERT INTO cliente VALUES (" + cpf + ", \'" + nome + "\', \'" + email + "\', \'" + endereco + "\')")
            connection.commit()
            sucesso = (cursor.rowcount == 1)
        except (Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return sucesso

    def remover(self, nome):
        sucesso = False
        try:
            connection = psycopg2.connect(user=self._usr, password=self._psw, port=self._port, database=self._db)
            cursor = connection.cursor()
            cursor.execute("DELETE FROM cliente WHERE cliente.nome = \'" + nome + "\'")
            connection.commit()
            sucesso = (cursor.rowcount == 1)
        except (Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return sucesso