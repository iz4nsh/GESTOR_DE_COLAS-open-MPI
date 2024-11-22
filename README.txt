*************************  OBJETIVOS  *********************************************************

  En primer lugar, se ha planteado un sistema basado en una pizarra (maestro-esclavo), cuya pizarra
(pantalla) indicará a qué caja debe ir el cliente. Para cumplir estas medidas, se establece un conjunto
de pasos para verificar de manera incremental que todo se cumple según las ideas planteadas.
  1. Establecer un sistema de cola única donde cada cliente estará un número de segundos entre
5-10 segundos entre que es atentado y se marcha. Se establecerá un conjunto de cajas
abiertas (el 50%), teniendo que abrir nuevas cajas siempre que el número de clientes
esperando sea del doble de cajas abiertas en ese momento, teniendo que cerrar cajas si el
número de cajas abiertas es superior al número de clientes en la cola. Una vez que un cliente
acabe, se volverá a dormir y se volverá a meter en la cola.

  2. Una vez que el sistema permite gestionar a los clientes, un subconjunto de dichos clientes
serán considerados “clientes prioritarios”, los cuales tardarán más que el resto de los
clientes. Estos clientes prioritarios estarán en la caja entre 10-20 segundos. Los clientes que
hayan finalizado su compra, vuelven de nuevo a la cola. Podéis decidir aquí si el cliente
“renace” como cliente prioritario o normal (por ejemplo, comprobar el tiempo actual, hacer
modulo 2 y con eso decidir qué cliente es).

  3. Debido a que estos clientes ralentizan la cola única, una parte de todas las cajas disponibles
se convertirán en “cajas prioritarias” (un 25% del total de cajas abiertas). Para ello será
necesario implementar una cola de prioridad (podéis utilizar una implementación de colas
de prioridad disponible en internet o de los apuntes de Estructura de Datos). Si las “cajas
prioritarias” están llenas, podéis vincular “clientes prioritarios” a cajas normales.
Una vez que el sistema funciona, se establecerá un sistema peer-to-peer siguiendo una idea similar,
pero en lugar de tener una cola única, los clientes se repartirán entre las cajas al inicio, y las cajas
que se queden vacías deberán solicitar al resto nuevos clientes (se pueden entregar de uno en uno,
la mitad de la fila...). Evitar desequilibrios de carga, con cajas trabajando y clientes pendientes y
otras cajas paradas
