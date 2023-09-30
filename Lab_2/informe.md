# Laboratorio_robotica

**Por Nicolas Guio y Andrés Serna**

El objetivo principal de esta práctica de laboratorio era aprender a programar un robot industrial ABB IRB140 utilizando RAPID y controlar sus acciones mediante señales digitales de entrada y salida. Además, debíamos desarrollar la habilidad de manejar bucles, condicionales y estructuras de control en RAPID, así como comprender cómo configurar y utilizar el módulo de entradas y salidas digitales en el controlador IRC5.
## Contenido
- [Solución planteada](#1)
- [Codigo](#2)
- [Simulación](#3)
- [Calibración](#4)

<br>

<a id='1'></a>

## Solución planteada

En la práctica de laboratorio de robótica que realizamos, utilizamos RobotStudio versión 5 para programar un manipulador industrial ABB IRB140 y aprovechamos el módulo de entradas y salidas digitales en el controlador IRC5. Los objetivos principales eran el manejo de RAPID y la comunicación a través de señales digitales.

Para comenzar, aseguramos que todos los requisitos estuvieran en su lugar: teníamos RobotStudio instalado y activo, la hoja de datos del manipulador IRB140 y la hoja de datos del módulo 3HAC025917-001/00DSQC652. Cada equipo de trabajo también tuvo su propia memoria USB para el proyecto.

La práctica se dividió en dos ejes temáticos:

Programación intermedia en RAPID: Manejo de bucles y condicionales: Comenzamos por desarrollar la lógica para que el robot respondiera a las señales digitales de entrada. Creamos dos señales digitales de entrada configuradas correctamente en el código RAPID. La primera señal de entrada activaría una rutina de escritura sobre cualquier superficie y encendería una luz de indicación. Para lograrlo, utilizamos bucles y condicionales en nuestro código para controlar el flujo del programa. Al finalizar la rutina, el brazo robótico debía regresar a su posición de HOME, donde todos los ángulos articulares eran 0 grados.

Manejo del módulo de Entradas y Salidas digitales: Comunicaciones por señales digitales: La segunda señal de entrada tenía como objetivo posicionar el brazo en una pose de mantenimiento, lo que permitiría instalar o desinstalar herramientas. Al mismo tiempo, esta señal debía apagar la luz de indicación. Para lograr esto, utilizamos las funciones del módulo de entradas y salidas digitales para controlar las señales de salida correspondientes. También implementamos la lógica necesaria para cambiar entre las rutinas utilizando botones en el mando de señales digitales.<br>

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
