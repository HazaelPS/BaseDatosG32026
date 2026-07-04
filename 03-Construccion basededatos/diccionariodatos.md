# Diccionario de datos Base de datos control escolar

Información general
| Proyecto | Columna 2 |
| Versión | Celda 1,2 |
| Fecha | Celda 1,2 |
| Elaboro | Celda 2,2 |


-Alumnos
-Profesores
-Materias
-Grupos
-Inscripciones

Permite controla la oferta educativa y la inscripción de los estudiantes

3.Catálogo de Restricciones Utilizadas

| Código | Significado |
|;--- | ;--- |
| PK | Primary Key |
| FK | Foreign Key|
| NN | Not Null |
| UQ | Unique |
| AI | Auto Increment |
| CK | Check |

4.Diccionario de Datos

``
**Tabla** Carrera

**Descripción** _Almacena las carreras ofertadas por la universidad

| Campos | Tipo | Longitud | Restricciones | Descripción |
|;--- | ;--- | ;--- | ;--- |
| Id_Carrera | INT | - | PK, IA, NN | Identificador unico de la carrera |
| Nombre | VARCHAR | 100 | UQ, NN | Nombre de la carrera |
| duracion_cuatrimestre | INT | - | NN, CK(>0) | Duración del cuatrimestre |

``
**Tabla** Alumno

**Descripción** _Almacena las carreras ofertadas por la universidad

| Campos | Tipo | Longitud | Restricciones | Descripción |
|;--- | ;--- | ;--- | ;--- |
| Id_Alumno | INT | - | PK, IA, NN | Identificador unico de la carrea |
| Matricula | VARCHAR | 10 | UQ, NN | Matricula Institucional |
| Nombre | VARCHAR | 50 | NN | Nombre del estudiante |
| Apellido_paterno | VARCHAR | 50 | NN | Apellido Paterno |
| Apellido_materno | VARCHAR | 50 | NULL | Apellido Materno |
| Correo | VARCHAR | 100 | UQ, NN | Correo Institucional |
| Fecha_nacimiento | Date | - | NN | Fecha de nacimiento |
| Id_Carrera | INT | - | FK, NN | Carrera a la que pertecene |

5.Relaciones

| Relación | Cardinalidad | Descripción |
| ;----- | ;----- | ;----- |
| Carrera -> Alumno | 1:N | Una carrera tiene muchos alumnos |
| Carrera -> Materia | 1:N | Una carrera tiene muchas materias |
| Profesor -> Grupo | 1:N | Un profesor puede impartir a varios grupos |
| Materia -> Grupo | 1:N | Una materia puede abrirse en varios grupos |

6.Matriz de Claves Foráneas

| Tabla | Campo FK | Descripción |
| ;----- | ;----- | ;----- |
| Alumno | id_carrera | Carrera (id_carrera) |
| Materia | id_carrera | Carrera (id_carrera) |
| Grupo | id_profesor | Profesor (id_profesor) |
| Grupo | id_materia | Materia (id_materia) |
| Inscripción | id_alumno | Alumno (id_alumno) |
| Inscripción | id_grupo | Grupo (id_grupo) |

7.Integridad Referencial

| Regla | Descripción |
|;--- | ;--- |
| IR-01 | No se puede registrar un alumno con una carrera inexistente |
| IR-02 | No se puede crear un grupo para una materia inexistente |
| IR-03 | No se puede crear un grupo para un profesor inexistente |

8.Regla del Negocio

| Código | Regla |
|;--- | ;--- |
| RN-01 | Un alumno pertenece a una sola carrera |
| RN-02 | Una carrera puede  |
| RN-03 | Una carrera puede tener muchas materias |

9.Diagrama Relacional
