# Construcción de Base de Datos con Lenguaje SQL

El lenguaje SQL (Structured Query Language), se divide en cinco grandes categorías:

1. DDL (Data Definition Language)
2. DML (Data Manipulation Language)
3. DQL (Data Query Language)
4. DCL (Data Control Language - Controla Permisos) - GRANT, REVOKE
5. TCL (Transaction Control Language - Controla Transacciones) - BEGIN TRANSACTION, COMMIT, ROLLBACK, SAVEPOINT

## SQL-DDL

**Lenguaje de definición de Datos**

Se utiliza para **crear y modificar la estructura** de una base de datos

Con DDL trabajamos sobre los objetos de la base de datos
- __Base de datos__

- __Tablas__

- __Restricciones__

- Vistas
- Índices
- Esquemas
- Stored Procedures
- Functions
- Triggers

**Comandos Principales**
| Comando | Función |
|---------|-------------|
| CREATE | Crear un objeto de base de datos |
| ALTER | Modificar una estructura existente |
| DROP | Elimina objetos de base de datos |
| TRUNCATE | Eliminar todos los registros de una tabla |
| RENAME | Cambiar el nombre de un objeto (según SGBD) |

## SQL-DML
**Lenguaje de Manipulación de Datos**

Sirve para trabajar con la información almacenada.

Con este lenguaje no se cambia la estructura, sino los registros.

**Comandos Principales**
| Comando | Función |
|---------|-------------|
| INSERT | Inserta registros |
| UPDATE | Actualiza registros |
| DELETE | Elimina registros |

## SQL-DQL
**Lenguaje de Consulta de Datos**

Su función es **consultar información** de la base de datos.

Este es probablemente el grupo más utilizado, ya que permite obtener información de la base de datos.

**Comandos Principales**
| Comando | Función |
|---------|-------------|
| SELECT | Consultar Información |

Generalmente se combina con:
- WHERE: Para filtrar información
- ORDER BY: Para ordenar la información
- GROUP BY: Para agrupar información
- HAVING: Para filtrar información agrupada
- JOIN (LEFT, RIGHT, INNER, FULL, CROSS): Para unir información de varias tablas
- DISTINCT: Para eliminar registros duplicados
- LIMIT / TOP: Para limitar la cantidad de registros obtenidos
- UNION: Para unir resultados de varias consultas
- Funciones de Agregado (SUM, AVG, COUNT, MAX, MIN): Para obtener información resumida
- Window Functions (ROW_NUMBER, RANK, DENSE_RANK, etc.): Para obtener información con particiones y ordenamientos, sin colapsar las filas

## Nomenclatura para la construcción de las Bases de Datos (Snake case)

La nomenclatura o convención que más se recomienda hoy si se busca una nomenclatura moderna,
portable y alineada con buenas prácticas en distintos motores de base de datos.

La razón es que funciona de forma consistente en **SQL SERVER, MYSQL O MARIADB** y especialmente
en **PostgreSQL**, donde los identificadores sin comillas se convierten automáticamente a
minúsculas. Con **snake_case** evitas problemas de mayúsculas y haces que las consultas sean más
legibles.

| Objeto | Convención | Ejemplo |
|---------|-------------|-------------|
| Base de Datos | snake_case | control_escolar |
| Esquema | snake_case | ventas, rh, seguridad |
| Tabla | Singular en snake_case | cliente, pedido, detalle_pedido |
| Columna | snake_case | cliente_id, fecha_registro, correo_electronico |
| PK | \<tabla\>_id | cliente_id, producto_id |
| FK | Igual que la PK referenciada | cliente_id, producto_id |
| Tabla fuente | \<tabla1\>_\<tabla2\> | alumno_curso, producto_proveedor |

## Nombrar las Restricciones

- pk_cliente
- fk_pedido_cliente
- uq_cliente_correo_electronico
- ck_producto_precio
- df_cliente_activo
- ix_pedido_fecha

**Prefijos**

- pk (Primary Key)
- fk (Foreign Key)
- uq (Unique)
- ck (Check)
- df (Default)
- ix (Index)
