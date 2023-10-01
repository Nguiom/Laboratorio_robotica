# Laboratorio_robotica

**Por Nicolas Guio y Andrés Serna**

El objetivo principal de esta práctica de laboratorio era aprender a programar un robot industrial ABB IRB140 utilizando RAPID y controlar sus acciones mediante señales digitales de entrada y salida. Además, debíamos desarrollar la habilidad de manejar bucles, condicionales y estructuras de control en RAPID, así como comprender cómo configurar y utilizar el módulo de entradas y salidas digitales en el controlador IRC5.
## Contenido
- [Solución planteada](#1)
- [Codigo](#2)
- [Simulación](#3)
- [Pruebas físicas](#4)

<br>

<a id='1'></a>

## Solución planteada

En la práctica de laboratorio de robótica que realizamos, utilizamos RobotStudio versión 5 para programar un manipulador industrial ABB IRB140 y aprovechamos el módulo de entradas y salidas digitales en el controlador IRC5. Los objetivos principales eran el manejo de RAPID y la comunicación a través de señales digitales.

Para comenzar, aseguramos que todos los requisitos estuvieran en su lugar: teníamos RobotStudio instalado y activo, la hoja de datos del manipulador IRB140 y la hoja de datos del módulo 3HAC025917-001/00DSQC652. Cada equipo de trabajo también tuvo su propia memoria USB para el proyecto.

La práctica se dividió en dos ejes temáticos:

Programación intermedia en RAPID: Manejo de bucles y condicionales: Comenzamos por desarrollar la lógica para que el robot respondiera a las señales digitales de entrada. Creamos dos señales digitales de entrada configuradas correctamente en el código RAPID. La primera señal de entrada activaría una rutina de escritura sobre cualquier superficie y encendería una luz de indicación. Para lograrlo, utilizamos bucles y condicionales en nuestro código para controlar el flujo del programa. Al finalizar la rutina, el brazo robótico debía regresar a su posición de HOME, donde todos los ángulos articulares eran 0 grados.

Manejo del módulo de Entradas y Salidas digitales: Comunicaciones por señales digitales: La segunda señal de entrada tenía como objetivo posicionar el brazo en una pose de mantenimiento, lo que permitiría instalar o desinstalar herramientas. Al mismo tiempo, esta señal debía apagar la luz de indicación. Para lograr esto, utilizamos las funciones del módulo de entradas y salidas digitales para controlar las señales de salida correspondientes. También implementamos la lógica necesaria para cambiar entre las rutinas utilizando botones en el mando de señales digitales.<br>


## Codigo

El codigo del modulo utilizado se encuentra en este mismo [github]
(https://github.com/Nguiom/Laboratorio_robotica/blob/main/Lab_2/Module1.mod)

<br>

Una descripción general del código RAPID es:

1. **Definición del Módulo**: El código RAPID comienza generalmente con la definición del módulo utilizando la palabra clave `MODULE`. Esto establece un alcance para las variables y procedimientos dentro del módulo.

2. **Definición del Workobject**: A continuación, se define el workobject, que representa el objeto de trabajo con el que el robot va a interactuar. Esto incluye la ubicación y orientación del objeto en el espacio de trabajo del robot.

3. **Definición del Toolobject**: Se define el toolobject que representa la herramienta que el robot utilizará. Esto incluye su geometría y características como el centro de gravedad.

4. **Definición de Puntos de Trayectoria**: Aquí se pueden definir puntos de trayectoria que el robot debe seguir. Estos puntos incluyen coordenadas espaciales y datos de orientación.

5. **Procedimiento Main()**: Por lo general, se crea un procedimiento principal llamado `Main()` o similar, que es la entrada principal del programa. Aquí se establece la lógica principal del programa, que incluiría la recepción y procesamiento de señales digitales de entrada, bucles, condicionales y la ejecución de las rutinas deseadas.

6. **Configuración de Entradas y Salidas Digitales**: Se pueden configurar las entradas y salidas digitales utilizando las funciones adecuadas proporcionadas por el controlador IRC5.

7. **Control de Señales Digitales**: Dentro del procedimiento `Main()`, se programaría la lógica para controlar las señales digitales de entrada y salida según los requisitos de la tarea. Esto podría incluir condicionales para verificar el estado de las entradas y, en función de eso, tomar decisiones sobre las acciones a realizar.

8. **Control de Movimiento del Robot**: Se utilizarán comandos de movimiento para controlar la posición y la orientación del robot en función de las señales digitales y otros datos de entrada.

<br>



<a id='3'></a>

## Simulación


En primer lugar, después de haber escrito y depurado nuestro código RAPID, procedimos a la simulación en RobotStudio.  <br>

https://github.com/Nguiom/Laboratorio_robotica/assets/72366982/0fab4f72-6ef0-47f5-9a94-70980cc1fc08



<br>
<a id='4'></a>

## Pruebas físicas

Una vez que estábamos satisfechos con la simulación y estábamos seguros de que el programa funcionaba correctamente en el entorno virtual, procedimos a la prueba física en el robot real.  <br>


https://github.com/Nguiom/Laboratorio_robotica/assets/71941461/4f0d3a6e-1175-4b5d-a76c-93b5026105f4

https://github.com/Nguiom/Laboratorio_robotica/assets/71941461/06ed6c47-5e93-4294-a4aa-0a10381e4f82


<br>




