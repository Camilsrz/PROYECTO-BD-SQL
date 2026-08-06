# Base de datos Relacional

Este proyecto presenta el diseño lógico y las consultas analíticas. El proyecto esta estructurado para entornos de ejecución SQL (PostgreSQL).
Proyecto Académico basado en un escenario de negocio real.

# Planteamiento del Problema

ALIMENTAMOS S.A. es una empresa colombiana dedicada a la distribución de productos alimenticios no perecederos a nivel nacional. Su modelo operativo se basa en la recepción de productos en su sede principal, ubicada en Bogotá, y su posterior distribución a otras ciudades del país mediante rutas previamente definidas. Sin embargo, actualmente la empresa gestiona todos sus procesos logísticos, comerciales y operativos de forma manual, lo que ha generado una serie de problemáticas que afectan su eficiencia, trazabilidad y capacidad de respuesta.
En su operación diaria, ALIMENTAMOS S.A. Debe gestionar la interacción entre múltiples actores: proveedores, productos, conductores, clientes, rutas de distribución y ventas. Cada uno de estos elementos tiene múltiples relaciones entre sí, y requiere un seguimiento estricto que actualmente no se realiza de manera sistematizada, lo cual genera errores, omisiones y retrabajos. Por ejemplo, el registro de productos y sus proveedores, la asignación de rutas y conductores, el seguimiento de entregas, los cambios en los costos de las rutas, o la generación de reportes mensuales se hacen a mano o mediante herramientas básicas como hojas de cálculo.
La situación actual ha traído como consecuencia:
● Demoras en el procesamiento de pedidos.
● Falta de trazabilidad de productos, ventas y entregas.
● Asignación ineficiente de recursos (conductores, rutas, productos).
● Dificultad para generar reportes confiables y a tiempo.
● Riesgo de pérdida de información clave (como cambios de costos o registros de contacto).
● Inconsistencias en la gestión de ventas y clientes.

# Diseño:

* 1. Modelo Entidad Relacion (./diagramas/Entidad Relacion.png)
* 2. Modelo Relacion Basado en Requerimientos (./diagramas/Relacional.png)
* 3. Modelo Relacional Normalizado (./diagramas/Relacional Normalizado.png) 

# Puntos Destacados

* **Normalización:** Aislamiento de atributos multivalorados mediante tablas independientes para numeros de contacto.

* **Resolucion de Relacion N:M** Implementación de tablas intermedias (incluye y suministra).

# Estructua del Repositorio

* CODE_POSTG.sql: Script DDL para la inicializacion y definición lógica de las tablas de la base de datos.
* DATA_DB_POSTG.sql: Script DML con datos de prueba.
* CONSULTAS_BD_PSTG.sql: Scripts de consulta que resuelven las necesidades analíticas del negocio.

# Uso de Inteligencia Artificial
Para el desarrollo de este proyecto se integraron herramientas de IA para refinar la jerarquia del orden secuencial, creación de registros simulados extensos basados en Colombia y validacion de consultas.