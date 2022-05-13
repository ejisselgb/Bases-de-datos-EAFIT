# Bases-de-datos-EAFIT
Curso de bases de datos para ingeniería de sistemas, Universidad EAFIT

#### Semestre vigente: 2022-1

**IMPORTANTE**

Si consideras importante agregar algún elemento a la clase o corregir algún elemento, puedes escribir al correo:

ejgutierrb@eafit.edu.co

Disfruta aprender, el conocimiento te da poderes para transformar tu entorno y hacerlo mucho mejor

![image](https://user-images.githubusercontent.com/8409481/151238632-568a9a36-fe85-4ce2-8c25-fd6f66cc22d1.png)


### Glosario de términos

Conexión remota a base de datos

psql -h (ip) -p (puerto postgres) -U (usuario) -d (base_datos)

psql ^  
   --host= {endpoint_rds_aws} ^  
   --port= 5432 ^  
   --username= {your_user} ^  
   --password ^  
   --dbname=MoviesEafit {Base de datos que utilizaremos para los trabajos de clase y trabajo independiente,  
   RedSocial: base de datos de trabajo en clase}


| Comando   |      Tipo      |  Descripción |
|----------|:-------------:|:------:|
| psql -U name  | postgres  |  Ingreso a la base de datos con el usuario postgres |
| \l  | postgres  | Listar bases de datos creadas |
| \c name_db | postgres | Pasar a un base de datos |
| \d name_table | postgres | Ver atributos y tipos de una tabla |
| \dt | postgres | Ver todas las tablas creadas en postgres |
| \h | postgres | Listar información consultas SQL disponibles |
| \dt | postgres | Ver todas las tablas creadas en postgres |
| \g | postgres | Ejecutar el comando previo |
| \dn | postgres | Lista de esquemas |
| \i filename | postgres | Ejecutar desde comandos desde un archivo |
| \e | postgres | Abrir editor de código |
| \dt *.* | postgres | Listar todas las tablas de un esquema |
| \q | postgres | Terminar la consola |
| SELECT version(); | SQL | Ver versión de postgres |
| show hba_file; | postgres | Mostrar ubicación de archivo de configuración |


### Glosario de términos para DynamoDB

| Comando   | Descripción |
|----------|:------:|
| aws --version  | Ver versión consola AWS |
| aws configure  | Configurar consola de AWS |
| java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb -port 8001 | Iniciar servicio de Dynamo |
| aws dynamodb list-tables --endpoint-url http://localhost:8001 | Listar tablas existentes en Dynamo |
| aws dynamodb scan --table-name table_course_DB --endpoint-url http://localhost:8001 | Scan sobre la tabla de Dynamo |
| aws dynamodb put-item --table-name Cats --item file://datadynamo.json --endpoint-url http://localhost:38001 | Agregar elemento a la tabla |
| aws dynamodb query --table-name table_course_DB --key-condition-expression "id=:id" --expression-attribute-values file://expression_attibutes.json --endpoint-url http://localhost:8001 | Filtrar por key de la tabla |
| aws dynamodb scan --table-name table_course_DB --filter-expression "cellphone= :cell " --expression-attribute-values  file://expression_attibutes_filter.json --endpoint-url http://localhost:8001 | Filtrar por otros atributos de la tabla |
| aws dynamodb delete-item --table-name table_course_DB --key file://expression_attibutes_filter.json --endpoint-url http://localhost:8001 | Eliminar elementos de la tabla |
| aws dynamodb delete-item --table-name table_course_DB --endpoint-url http://localhost:8001 | Eliminar todos los registros de una tabla |


