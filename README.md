# 🎬 Evaluación Final — Módulo 2

Proyecto de extracción, almacenamiento y consulta de datos de películas usando Python y MySQL.

## 📁 Estructura del proyecto

```
├── Ejercicio-1-Python.ipynb   # Extracción de datos de la API, creación de la BD e inserción de datos
├── Ejercicio-1-SQL.sql        # Consultas SQL sobre la base de datos de películas
├── Ejercicio-2-SAKILA.sql     # Consultas SQL sobre la base de datos Sakila
├── sakila_bd.sql              # Estructura de la base de datos Sakila
├── sakila_data.sql            # Datos de la base de datos Sakila
├── .env                       # Contraseña MySQL (no subir a GitHub ⚠️)
└── README.md
```

## 🚀 Cómo arrancar el proyecto

### Requisitos previos

- Python 3.x instalado.
- MySQL instalado y en ejecución.
- Clonar este repositorio.
- Ejecutar lo siguiente para instalar todas las librerías necesarias:

```bash
pip install requests pandas mysql-connector-python python-dotenv numpy
```

### 1. Configurar las variables de entorno

Crea un archivo `.env` en la raíz del proyecto con tu contraseña de MySQL:

```
pass_sql=tu_contraseña_aqui
```

### 2. Cargar la base de datos Sakila

Importa los ficheros en este orden desde MySQL Workbench o terminal:

sakila_bd.sql
sakila_data.sql

### 3. Ejecutar el Ejercicio 1

Abre `Ejercicio-1-Python.ipynb` y ejecuta las celdas en orden:

1. **Imports** — carga las librerías necesarias.
2. **Extracción** — obtiene 100 películas desde la API.
3. **Creación de la BD** — crea la base de datos `pelis` y su tabla en MySQL.
4. **Inserción** — inserta los datos en la tabla.
5. **Consultas** — responde las preguntas con queries SQL.

### 4. Ejecutar los Ejercicios SQL

Abre y ejecuta directamente en MySQL Workbench:

- `Ejercicio-1-SQL.sql` — consultas sobre la base de datos `pelis`
- `Ejercicio-2-SAKILA.sql` — consultas sobre la base de datos `sakila`

> ⚠️ El archivo `.env` nunca debe subirse a GitHub. Asegúrate de que está en tu `.gitignore`.
