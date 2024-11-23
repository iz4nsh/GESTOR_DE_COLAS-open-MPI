# Gestión de Colas con Sistema Maestro-Esclavo y Clientes Prioritarios

Este proyecto implementa un sistema de gestión de colas que combina una estructura maestro-esclavo con funcionalidades avanzadas para la asignación de clientes y optimización de recursos.

---

## **Objetivos**

El sistema tiene como objetivo principal optimizar la experiencia del cliente y el uso eficiente de las cajas disponibles. Para ello, se sigue una estrategia incremental que abarca los siguientes pasos:

### **1. Gestión básica de colas**  
- **Sistema de cola única:**  
  - Los clientes esperan en una única cola antes de ser atendidos.  
  - Cada cliente será atendido entre **5 y 10 segundos** antes de abandonar la caja y regresar a la cola.  
- **Apertura dinámica de cajas:**  
  - Inicialmente, solo estará operativo el **50% de las cajas disponibles**.  
  - Se abrirán nuevas cajas si el número de clientes en la cola es el **doble de las cajas abiertas**.  
  - Las cajas se cerrarán si el número de clientes es inferior al número de cajas abiertas.  

### **2. Clientes prioritarios**  
- **Clasificación de clientes:**  
  - Un subconjunto de los clientes será designado como **clientes prioritarios**, quienes requerirán un tiempo de atención mayor (**10 a 20 segundos**).  
  - Al finalizar, los clientes regresarán a la cola, pudiendo “renacer” como prioritarios o normales según una regla definida (por ejemplo, comprobación basada en un módulo de tiempo).  

### **3. Cajas prioritarias**  
- **Distribución de recursos:**  
  - Un **25% de las cajas abiertas** se asignarán como **cajas prioritarias** para gestionar clientes prioritarios.  
  - Si estas cajas están ocupadas, los clientes prioritarios podrán ser atendidos en cajas normales.  
- **Implementación técnica:**  
  - Se utilizará una **cola de prioridad** para organizar y gestionar los clientes prioritarios.  

### **4. Sistema peer-to-peer**  
- **Evolución del sistema:**  
  - En lugar de una única cola, los clientes se distribuirán entre las cajas disponibles desde el inicio.  
  - Las cajas que queden vacías podrán solicitar clientes a otras cajas para evitar desequilibrios de carga.  
  - El sistema podrá transferir clientes individualmente o en bloques (por ejemplo, la mitad de la fila).  

---

## **Características Clave**
- Gestión dinámica de recursos para maximizar eficiencia.  
- Soporte para clientes con diferentes niveles de prioridad.  
- Escalabilidad mediante un diseño basado en conceptos maestro-esclavo y peer-to-peer.  
- Implementación modular con soporte para estructuras de datos avanzadas como colas de prioridad.  

---

## **Requisitos y Ejecución**
Para ejecutar este proyecto, se necesitan las siguientes dependencias:  
-  openmpi-bin openssh-client openssh-server libopenmpi-dbg libopenmpi-dev
