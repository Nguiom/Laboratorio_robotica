# Laboratorio_robotica
** Por Nicolas Guio y Andres**
El objetivo de este laboratorio es usar el robot industrial ABB IRB 140 para escribir nuestro nombres en tanto una superficie plana como para una inclinida a 30 grados.
## Contenido
- [Solución planteada](#1)
- [Simulación](#2)


<br>

<a id='1'></a>

## Solución planteada

Lo primero que se hizo fue diseñar una herramienta que sostuviera el marcador y que actuara como efector final. Esta en un principio se iba hacer de forma recta, pero despues de discutirlo con otros compañeros se llego a la conclusión de que esa forma podria presentar más singularidades que un inclinada.
Al final se diseño una con una inclinación 75 grados con respecto a su base, como se ver en la siguiente imagen:

<img src="https://github.com/Nguiom/Laboratorio_robotica/tree/main/Lab_1/planos.jpg" width="600">

Este modelo se mando a hacer mediante una impresión 3D con un 30% de relleno y tambien se utilizo en la simulación en robostudio, ademas de esta se uso un cubo para simular la superficie a escribir, a este se le puso un relieve de 10mm para facilitar la creación de trayectorias.

<img src="https://github.com/Nguiom/Laboratorio_robotica/tree/main/Lab_1/cubo.png" width="600">

Estos modelos se subieron a una estación de trabajo en robo estudio en la cual 
