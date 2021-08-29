import traceback
import psycopg2
from funcionario import Funcionario

class FuncionarioDAO(object):
    
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
            cursor.execute("SELECT cpf, nome, cargo, salario FROM funcionario")
            registros = cursor.fetchall()
            for r in registros:
                f = Funcionario()
                f.cpf = r[0]
                f.nome = r[1]
                f.cargo = r[2]
                f.salario = r[3]
                resultados.append(f)
        except(Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return resultados

    def inserir(self, cpf, nome, cargo, salario):
        sucesso = False
        try:
            connection = psycopg2.connect(user=self._usr, password=self._psw, port=self._port, database=self._db)
            cursor = connection.cursor()
            cursor.execute("INSERT INTO funcionario VALUES (" + cpf + ", \'" + nome+ "\', \'" + cargo + "\', " + str(salario) + ")")
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
            cursor.execute("DELETE FROM funcionario WHERE nome = \'" + nome + "\'")
            connection.commit()
            sucesso = (cursor.rowcount == 1)
        except (Exception, psycopg2.Error) as error:
            traceback.print_exc()
        finally:
            if connection:
                cursor.close()
                connection.close()
        return sucesso