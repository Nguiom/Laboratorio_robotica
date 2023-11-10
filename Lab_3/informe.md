# Laboratorio_robotica

**Por Nicolas Guio y Andrés Serna**

El objetivo principal de esta práctica de laboratorio era aprender a programar un robot industrial ABB IRB140 utilizando RAPID y controlar sus acciones mediante señales digitales de entrada y salida. Además, debíamos desarrollar la habilidad de manejar bucles, condicionales y estructuras de control en RAPID, así como comprender cómo configurar y utilizar el módulo de entradas y salidas digitales en el controlador IRC5.
## Contenido
- [Resumen](#1)
- [Procedimiento MATLAB](#2)
- [Procedimiento Python](#3)
- [Resultados](#4)

<br>

<a id='1'></a>

## Resumen

En el presente informe se detallan las actividades realizadas en el laboratorio, que incluyeron el uso de Linux, ROS (Robotic Operating System), Python y MATLAB para llevar a cabo la simulación y control de una tortuga (turtle) en el simulador TurtleSim.

## Procedimiento MATLAB

1. Se llevaron a cabo las siguientes operaciones en un entorno Linux:
   - Se lanzaron dos terminales de comandos.
   - En la primera terminal, se ejecutó el comando `roscore` para iniciar el nodo maestro de ROS.
   - En la segunda terminal, se ejecutó el comando `rosrun turtlesim turtlesim_node` para iniciar el simulador TurtleSim.
   - Se lanzó una instancia de MATLAB para Linux, asegurándose de que contara con el toolbox de robótica de Mathworks.

2. Creación de un script en MATLAB para suscribirse al tópico de posición (pose) de la tortuga:
   - Se creó un script en MATLAB que utilizó la instrucción `rossubscriber` con los argumentos `('TOPICNAME', 'MESSAGETYPE')` para suscribirse al tópico de posición de la tortuga.
   - Se empleó la opción `LatestMessage` para capturar el último mensaje obtenido del tópico de posición.

3. Creación de un script en MATLAB para enviar valores asociados a la pose de la tortuga:
   - Se desarrolló un script en MATLAB que permitió el envío de todos los valores asociados a la pose de la tortuga en TurtleSim.
   - Se aclaró que el tópico de pose únicamente sirve para suscribirse y consultar los servicios de TurtleSim para modificar la pose de la tortuga.

4. Consulta sobre la finalización del nodo maestro en MATLAB:
   - Se realizó una consulta para determinar de qué manera se debe finalizar el nodo maestro en MATLAB.

## Procedimiento Python

En el paquete `helloturtle` de ROS, en la carpeta de scripts, se creó un script de Python llamado `myTeleopKey.py`.

El código desarrollado permite operar una tortuga del paquete TurtleSim utilizando el teclado y cumple con las siguientes especificaciones:

- Se puede mover hacia adelante y hacia atrás con las teclas 'W' y 'S'.
- Se puede girar en sentido horario y antihorario con las teclas 'D' y 'A'.
- La tecla 'R' permite que la tortuga retorne a su posición y orientación centrales.
- La tecla 'ESPACIO' provoca un giro de 180°.

Para detectar las teclas presionadas, se empleó el código disponible en [este enlace](http://python4fun.blogspot.com/2008/06/get-key-press-in-python.html), que ha demostrado ser efectivo. Los movimientos con las teclas 'A', 'S', 'D' y 'W' se lograron utilizando el tópico `turtle1/cmd_vel`, mientras que los movimientos con las teclas 'R' y 'ESPACIO' se llevaron a cabo mediante los servicios `turtle1/teleport_absolute` y `turtle1/teleport_relative`. Para usar estos tópicos y servicios, fue necesario importar los tipos de mensajes y servicios adecuados en Python.

El script recién creado se incluyó en la sección `catkin_install_python` del archivo `CMakeLists.txt` siguiendo la misma estructura que los otros scripts incluidos. Se realizaron las siguientes operaciones en Linux:

1. Se abrieron tres terminales de comandos.
2. En la primera terminal, se ejecutó el comando "roscore" para iniciar el nodo maestro de ROS.
3. En la segunda terminal, se ejecutó "rosrun turtlesim turtlesim_node" para iniciar el simulador TurtleSim.
4. En la tercera terminal, se accedió al directorio que contiene el workspace de Catkin y se ejecutó el comando "source devel/setup.bash". Acto seguido, se ejecutó el script "myTeleopKey.py" mediante el comando "rosrun helloturtle myTeleopKey.py". En este punto, la terminal debería estar lista para capturar las teclas ingresadas.

Se pudo observar el movimiento de la tortuga controlado por las teclas 'A', 'S', 'W' y 'D', así como los cambios instantáneos en la posición con las teclas 'R' y 'ESPACIO".

## Resultados


El experimento demostró la integración de ROS y MATLAB para la simulación y control de robots en un entorno Linux. Los scripts desarrollados permitieron suscribirse y enviar información de posición a la tortuga en TurtleSim. Se recomienda buscar información adicional sobre la finalización del nodo maestro en MATLAB para garantizar un cierre adecuado del sistema. Asimismo, se pudo observar el movimiento de la tortuga controlado por las teclas 'A', 'S', 'W' y 'D', así como los cambios instantáneos en la posición con las teclas 'R' y 'ESPACIO" a través de Python.

[![Simulacion](https://img.youtube.com/vi/M7SKSMkSA3U/maxresdefault.jpg)](https://youtu.be/M7SKSMkSA3U)

[boton.webm](https://github.com/Nguiom/Laboratorio_robotica/assets/71941461/5030a9f0-3c95-48ac-974b-0b3162aea943)
