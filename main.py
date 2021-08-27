import traceback
import psycopg2

pg_user = "postgres"
pg_password = "root"
pg_port="5432"
pg_database = "vendas"

resultados = []
try: 
    connection = psycopg2.connect(user=pg_user, password=pg_password, port=pg_port, database=pg_database)
    cursor = connection.cursor()
    cursor.execute("SELECT nome FROM usuario")
    registros = cursor.fetchall()
    for r in registros:
        nome = r[0]
        resultados.append(nome)
except(Exception, psycopg2.Error) as error:
    traceback.print_exc()
finally:
    if connection:
        cursor.close()
        connection.close()
 
for i in resultados:
    print(i)