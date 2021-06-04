# II.B. PROCESO DE ADMINISTRACIÓN DE LA CONFIGURACIÓN (ACNF)

## Tabla de contenido

- [II.B. PROCESO DE ADMINISTRACIÓN DE LA CONFIGURACIÓN (ACNF)](#iib-proceso-de-administración-de-la-configuración-acnf)
  - [Tabla de contenido](#tabla-de-contenido)
  - [Objetivo General](#objetivo-general)
  - [Objetivos Específicos](#objetivos-específicos)
  - [Reglas del proceso](#reglas-del-proceso)
  - [Roles del proceso](#roles-del-proceso)
  - [Actividades del Proceso](#actividades-del-proceso)
    - [ACNF-1 Establecer la cobertura y el alcance de la administración de la configuración](#acnf-1-establecer-la-cobertura-y-el-alcance-de-la-administración-de-la-configuración)
    - [ACNF-2 Definir la estructura del repositorio de configuraciones](#acnf-2-definir-la-estructura-del-repositorio-de-configuraciones)
    - [ACNF-3 Registrar los elementos de configuración en el repositorio de configuraciones](#acnf-3-registrar-los-elementos-de-configuración-en-el-repositorio-de-configuraciones)
    - [~~ACNF-4 Derogado~~](#acnf-4-derogado)
    - [~~ACNF-5 Derogado~~](#acnf-5-derogado)
  - [Relación de Productos del proceso](#relación-de-productos-del-proceso)
  - [Indicador del proceso](#indicador-del-proceso)

## Objetivo General

Establecer y actualizar un repositorio de configuraciones, en el que se integren las soluciones tecnológicas y sus componentes, así como la información funcional y técnica de los mismos y la relativa a los diversos ambientes y arquitecturas tecnológicas de la UTIC, como elementos de configuración, con la finalidad de facilitar su acceso a los involucrados en los procesos de la UTIC, cuando éstos así lo requieran para la operación del proceso respectivo.

## Objetivos Específicos

1. Identificar, registrar, controlar y verificar los datos de los elementos de configuración, así como la información relacionada con los mismos.
2. Mantener actualizada la información contenida en el repositorio de configuraciones y disponible para los servidores públicos de la UTIC involucrados en los diversos procesos.

## Reglas del proceso

1. El responsable de este proceso es responsable de la administración del repositorio de configuraciones.
2. El responsable de este proceso deberá mantener una verificación continua del repositorio de configuraciones a fin de constatar que éste se encuentre actualizado.

## Roles del proceso

1. Responsable del Proceso de Administración de la Configuración (ACNF).

## Actividades del Proceso

### ACNF-1 Establecer la cobertura y el alcance de la administración de la configuración

**Descripción:**

Identificar las soluciones tecnológicas y sus componentes, así como los diversos ambientes y arquitecturas tecnológicas de la UTIC, como elementos de configuración, para establecer la cobertura que tendrá el proceso, así como el alcance de la administración sobre los elementos de la configuración y sus componentes.

**Factores Críticos:**

El responsable de este proceso deberá:

1. Identificar los elementos de configuración para determinar, de acuerdo a las necesidades y recursos con los que cuenta la UTIC, los que serán administrados en este proceso.
2. Elaborar un programa para la integración de los elementos de configuración en el repositorio de configuraciones, el cual, en caso de ser gradual, considerará lo siguiente:
   - La criticidad e impacto en caso de falla de los elementos a administrar.
   - El tipo de los elementos a administrar.
   - Los servicios actuales y los proyectados.
   - Las localidades en que se ubican los elementos a administrar.
3. Implementar acciones de control para la administración del repositorio de configuraciones, considerando al menos:
   - El mantenimiento al modelo de datos del repositorio de configuraciones.
   - La definición y aplicación de criterios técnicos para realizar modificaciones a los estados de los elementos de configuración o componentes.
   - Que la incorporación de elementos de configuración o componentes al repositorio de configuraciones se realice mediante cambios administrados.
   - Las relativas a la administración de los usuarios del repositorio de configuraciones, incluyendo perfiles y permisos.
   - La programación de las revisiones al repositorio de configuraciones y su calendarización.

### ACNF-2 Definir la estructura del repositorio de configuraciones

**Descripción:**

Definir la estructura del repositorio de configuraciones, con base en la identificación de las características de los elementos de configuración y componentes que serán administrados en dicho repositorio, y de la infraestructura de TIC de la Institución.

**Factores Críticos:**

El responsable de este proceso deberá:

1. Definir la estructura de datos que requerirá el repositorio de configuraciones, considerando al menos:
   - Los atributos de los elementos de configuración y de sus componentes, como lo son, entre otros: su identificador único, nombre, descripción, ubicación, versión, responsable, interrelación con otros elementos, clase y categoría, así como el estado en que se encuentra el elemento o componente.
   - Los atributos mínimos para conformar las líneas base de los elementos de configuración; así como de aquellos que no requieran contar con ella
   - La nomenclatura de los elementos de configuración y de sus componentes, integrada por caracteres que refieran al nombre, versión, clase, grupo y tipo, entre otros.
   - Identificar la relación funcional y de dependencia entre los elementos de configuración y sus componentes, así como su relación con elementos de otros procesos y sistemas, tales como: líneas base, acuerdos de niveles de servicio, roles, registros de incidentes, problemas, cambios y liberaciones, así como documentación relacionada.
   - Integrar un catálogo que permita identificar los diferentes estados en que pueden encontrarse los elementos de configuración o sus componentes, considerando entre otros, los siguientes:
      - En desarrollo. Aplica a elementos o componentes en proceso de desarrollo, instalación, configuración, personalización, entre otros.
      - Borrador. Aplica a elementos o componentes en proceso de elaboración no concluidos o no aprobados.
      - Aprobado. Aplica a elementos o componentes cuya elaboración o desarrollo se encuentra terminado y aceptado.
      - Activo. Aplica a elementos o componentes en operación.
      - Suspendido. Aplica a elementos o componentes que temporalmente se encuentran inactivos, pero que son susceptibles de entrar nuevamente en operación.
      - Retirado. Aplica a elementos o componentes que quedan fuera de operación, pero que son susceptibles de reutilizarse para otros elementos o componentes de configuración.
      - Fuera de uso. Aplica a elementos o componentes que quedan fuera de operación y que no son susceptibles de reutilizarse.
   - Los criterios técnicos para la modificación de los estados de los elementos de configuración o de alguno de sus componentes.
2. Obtener del titular de la UTIC su autorización al modelo de datos del repositorio de configuraciones, para la implementación del repositorio y comunicar a los responsables de los demás procesos de la UTIC, sobre su disponibilidad.

### ACNF-3 Registrar los elementos de configuración en el repositorio de configuraciones

**Descripción:**

Efectuar el registro en el repositorio de configuraciones, de los datos e información de los elementos de configuración y sus componentes.

**Factores Críticos:**

El responsable de este proceso deberá:

1. Realizar, de acuerdo con el programa previsto en la actividad ACNF 1, el registro en el repositorio de configuraciones.
2. Incorporar y/o actualizar en el repositorio de configuraciones, la información proveniente de los diversos procesos de la UTIC, a fin de integrar la totalidad de los elementos de la configuración.
3. Asegurar que los datos que se mantengan tanto en el repositorio de configuraciones como en el catálogo de servicios de TIC, y sus correspondientes interrelaciones, sean consistentes con los datos que registre la UTIC en la Herramienta de Gestión de la Política TIC.
4. Registrar los resultados de las revisiones al repositorio de configuraciones, así como determinar las acciones de mejora a ejecutar.

### ~~ACNF-4 Derogado~~

Proceso derogado DOF 04/02/2016

### ~~ACNF-5 Derogado~~

Proceso derogado DOF 04/02/2016

## Relación de Productos del proceso

1. “Repositorio de configuraciones” (Modelo no sujeto a formato, de acuerdo a las necesidades de la Institución).

## Indicador del proceso

- **Nombre:** Mantenimiento actualizado del repositorio de configuraciones.
- **Objetivo:** Medir el cumplimiento en la actualización del repositorio de configuraciones.
- **Descripción:** Verificar el mantenimiento de información actualizada en el Repositorio de configuraciones.
- **Fórmula:**
   > % de eficiencia = (número de revisiones efectuadas al repositorio de configuraciones/número de revisiones programadas al repositorio de configuraciones) X 100.
- **Responsable:** El responsable de este proceso.
- **Frecuencia de cálculo:** Semestral.
