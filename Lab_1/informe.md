# Laboratorio_robotica
** Por Nicolas Guio y Andres**
El objetivo de este laboratorio es usar el robot industrial ABB IRB 140 para escribir nuestro nombres en tanto una superficie plana como para una inclinida a 30 grados.
## Contenido
- [Solución planteada](#1)
- [Simulación](#2)
- [Calibración](#3)

<br>

<a id='1'></a>

## Solución planteada

Lo primero que se hizo fue diseñar una herramienta que sostuviera el marcador y que actuara como efector final. Esta en un principio se iba hacer de forma recta, pero despues de discutirlo con otros compañeros se llego a la conclusión de que esa forma podria presentar más singularidades que un inclinada.
Al final se diseño una con una inclinación 75 grados con respecto a su base, como se ver en la siguiente imagen:<br>

<img src="https://github.com/Nguiom/Laboratorio_robotica/tree/main/Lab_1/planos.jpg" width="600">

Este modelo se mando a hacer mediante una impresión 3D con un 30% de relleno y tambien se utilizo en la simulación en robostudio, ademas de esta se uso un cubo para simular la superficie a escribir, a este se le puso un relieve de 10mm para facilitar la creación de trayectorias.<br>

<img src="https://github.com/Nguiom/Laboratorio_robotica/tree/main/Lab_1/cubo.png" width="600">

Estos modelos se subieron a una estación de trabajo en robostudio en la cual se definio el workobject como el plano del cubo el se va a trabajar, tambien se definio la herramienta de trabajo y el tcp de esta en la punta de la misma paralela a la herramienta.<br>

<img src="https://github.com/Nguiom/Laboratorio_robotica/tree/main/Lab_1/cubo.png" width="600">

Seguido se usa la herramienta de ruta automatica usando las aristas del relieve para obtener los puntos para los nombres y la figura. En el caso de los puntos llamados home, uno se elegio a una posicion cercana a la 0-0-0-0-0-0 de los ejes de la maquina en el marco de referencia globla, mientras que la otra se hizo en el centro y a 100mm de distancia en el eje z de la figura por hacer, el cual se encuentra en el marco de referencia del workobject al igualque las rutas. El primero de esto se refiere a la posición inicial/final deseada para el robot, en el caso del segundo es la posición a la cual la maquina se devuelve despues de escribir cada letra.<br>

Finalmento se creo el codigo en RAPID para que ejecutace las funciones como en el siguiente diagrama de flujo

<img src="https://github.com/Nguiom/Laboratorio_robotica/tree/main/Lab_1/diagrama.png" width="600">

