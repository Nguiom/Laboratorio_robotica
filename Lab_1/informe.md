# Laboratorio_robotica

**Por Nicolas Guio y Andres**

El objetivo de este laboratorio es usar el robot industrial ABB IRB 140 para escribir nuestro nombres en tanto una superficie plana como para una inclinida a 30 grados.
## Contenido
- [Solución planteada](#1)
- [Codigo](#2)
- [Simulación](#3)
- [Calibración](#4)

<br>

<a id='1'></a>

## Solución planteada

Lo primero que se hizo fue diseñar una herramienta que sostuviera el marcador y que actuara como efector final. Esta en un principio se iba hacer de forma recta, pero despues de discutirlo con otros compañeros se llego a la conclusión de que esa forma podria presentar más singularidades que un inclinada.
Al final se diseño una con una inclinación 75 grados con respecto a su base, como se ver en la siguiente en los [planos](https://github.com/Nguiom/Laboratorio_robotica/raw/main/Lab_1/BaseMarcador.pdf)<br>

Este modelo se mando a hacer mediante una impresión 3D con un 30% de relleno y tambien se utilizo en la simulación en robostudio, ademas de esta se uso un cubo para simular la superficie a escribir, a este se le puso un relieve de 10mm para facilitar la creación de trayectorias.<br>

<img src="https://github.com/Nguiom/Laboratorio_robotica/raw/main/Lab_1/cubo.jpg" width="600">

Estos modelos se subieron a una estación de trabajo en robostudio en la cual se definio el workobject como el plano del cubo el se va a trabajar, tambien se definio la herramienta de trabajo y el tcp de esta en la punta de la misma paralela a la herramienta.<br>

<img src="https://github.com/Nguiom/Laboratorio_robotica/raw/main/Lab_1/estacion.jpg" width="600">

Seguido se usa la herramienta de ruta automatica usando las aristas del relieve para obtener los puntos para los nombres y la figura. En el caso de los puntos llamados home, uno se elegio a una posicion cercana a la 0-0-0-0-0-0 de los ejes de la maquina en el marco de referencia globla, mientras que la otra se hizo en el centro y a 100mm de distancia en el eje z de la figura por hacer, el cual se encuentra en el marco de referencia del workobject al igualque las rutas. El primero de esto se refiere a la posición inicial/final deseada para el robot, en el caso del segundo es la posición a la cual la maquina se devuelve despues de escribir cada letra.<br>

Finalmento se creo el codigo en RAPID para que ejecutace las funciones como en el siguiente diagrama de flujo

<img src="https://github.com/Nguiom/Laboratorio_robotica/raw/main/Lab_1/diagrama.jpg" width="600">

<br>
<a id='2'></a>

## Codigo

El codigo del modulo utilizado se encuentra en este mismo [github](https://github.com/Nguiom/Laboratorio_robotica/tree/main/Lab_1/Module1.mod)

<br>

Lo primero que se define en el mismo es el modulo, seguido van el workobject, el toolobject y las constantes que en este caso son los puntos de la trayectoria. Seguido se define el main, en el que se llaman las funciones a ejecutarse, en esta caso las rutas. Finalmente se definen las rutas, que en este caso hay una para cada letra, como se puede ver en el codigo la funcion de ruta usa las el comando "MoveL" para mover linealmente al robot a uno de los puntos previamente especificados.

<br>

<a id='3'></a>

## Simulación


La simulación para la escritura en un plano <br>

[![Simulacion](https://img.youtube.com/vi/ugJ9bCAlZsQ/maxresdefault.jpg)](https://youtu.be/ugJ9bCAlZsQ)


<br>
<a id='4'></a>

## Calibración
