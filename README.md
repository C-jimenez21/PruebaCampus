# PRUEBA CAMPUS PHP

Creación de base de datos con CRUD implementado

## Descripción

Este proyecto consiste en una API desarrollada en PHP que ayuda a realizar operaciones CRUD (Crear, Leer, Actualizar, Eliminar) en bases de datos MySQL. La API está diseñada para usar el paquete Composer y la biblioteca Bramus Router, que son responsables de la gestión eficiente del enrutamiento y las solicitudes HTTP.

**Nota:** Ten en cuenta que no está disponible el posteo de datos nuevos.

## Requisitos

Asegúrate de tener los siguientes requisitos antes de ejecutar la API:

- PHP 8
- MySQL
- Composer version 2.5.5

## Instalación

1. Clona este repositorio en tu máquina local o descárgalo como archivo ZIP. `git clone <https://github.com/C-jimenez21/PRUEBA-PHP>`
2. Accede al directorio del proyecto. `cd nombre-del-proyecto`
3. Instala las dependencias utilizando Composer. `composer install`
4. Configuración de la base de datos.
   - Crea una base de datos MySQL en tu servidor.
   - Importa el archivo SQL proporcionado en la carpeta `database/`.
5. Configuración de la conexión a la base de datos.
   - Abre el archivo `config/database.php`.
   - Modifica los valores de configuración para que coincidan con tu entorno de base de datos.
6. ¡La API está lista para ser utilizada! Puedes enviar peticiones a `http://localhost` utilizando las rutas y métodos disponibles.

## Uso

A continuación se muestra una descripción de las rutas y métodos disponibles en la API:

- `GET /endpoint`: Obtener todos los registros de la tabla especificada.
- `POST /endpoint`: Agregar un nuevo registro a la tabla especificada.
- `PUT /endpoint/{id}`: Actualizar un registro existente en la tabla especificada.
- `DELETE /endpoint/{id}`: Eliminar un registro existente de la tabla especificada.

**Nota:** Reemplaza `endpoint` con el nombre de la tabla deseada.

## Tablas

A continuación se muestra las tablas disponibles para actualizar y eliminar:

- Campers
- Pais
- Region
- Departamento

**Nota:** Reemplaza `endpoint` con el nombre de la tabla deseada.