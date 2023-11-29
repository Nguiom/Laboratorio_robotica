# Laboratorio_robotica

**Por Nicolas Guio y Andrés Serna**
## Contenido
- [Resumen](#1)
- [Ecuaciones de la inversa](#2)
- [Descripción del código de programación](#3)
- [Resultados](#4)

<br>

<a id='1'></a>

## Resumen

En el presente informe se detallan las actividades realizadas en el laboratorio, que incluyeron el uso de Linux, ROS (Robotic Operating System), Pythonpara el movimiento lineal del robot Phantom.

## Ecuaciones de la inversa

Se soluciono la cinematica inversa del robot para el que se reciban cordenas $x,y,z$ y la orientación del vector unitario de la conponente "O" del NOA estara en dirrección [0,0,1], la que corresponde a una linea con solo componentes en z. Estas son las ecuaciones utilizadas:

```math
q1=\arctan(y/x) \\
a=\sqrt()

```

## Descripción del código de programación

En primer lugar, se ajusta la configuración de los motores mediante el archivo de configuración de Dynamixel, que se encuentra en la página del curso. Dentro de este archivo, se establecen los ajustes para los cinco motores que conforman el pincher. Una vez creado este archivo, se procede al código de Python, donde se importan las siguientes dependencias.
![image](https://github.com/Nguiom/Laboratorio_robotica/assets/72366982/2f8b221b-abc6-4936-8c93-300ef1769ec0)

El módulo rospy se utiliza para el funcionamiento general de ROS en Python, numpy se emplea para realizar operaciones matemáticas en el código, y diversos tópicos y mensajes propios de ROS son importados. La función Join_publisher se encarga de inicializar un objeto publisher con el tema de joint_trajectory, el cual se utiliza dentro del objeto de la clase Publisher creado posteriormente. Se inicia un bucle siempre que rospy no se haya apagado, y luego se envían los puntos guardados al motor. Es importante señalar que esta función es un remanente de pruebas anteriores y no se utiliza en el código principal del programa.
![image](https://github.com/Nguiom/Laboratorio_robotica/assets/72366982/6bf5efa2-98bb-45d7-bfb9-0d439b0312dd)

Las funciones callback y listener se encargan de recibir y procesar datos obtenidos de los servomotores del manipulador. En el caso de listener, se inicializa el nodo que representa el código de Python dentro del entorno de ROS, además de suscribirlo al tópico que transmite los estados de las articulaciones del robot. Por otro lado, la función de callback crea una variable global que puede ser utilizada fuera de la función. Esta variable se define como la multiplicación de un dato recibido por 180/pi, lo que convierte una entrada en radianes a grados.
![image](https://github.com/Nguiom/Laboratorio_robotica/assets/72366982/271a3500-5e58-40e6-8559-ea302ea9e758)

La función jointCommand espera a que el servicio de transmitir al motor esté disponible. En cuanto esto sucede, intenta enviar un comando de Dynamixel definido como un servicio del entorno de Dynamixel. Este comando incluye un número de comando, un identificador para el motor al que se refiere, el nombre de la dirección de memoria que debe modificar el comando y, finalmente, el valor nuevo que tomará esta posición de la memoria. Una vez enviado, se espera un tiempo para ROS y se devuelve el resultado de la instrucción enviada al manipulador.
![image](https://github.com/Nguiom/Laboratorio_robotica/assets/72366982/ada8221b-ca7d-4278-aa6c-b05d456e884c)

En la parte del código que se ejecuta al llamar al archivo desde la consola de comandos, se ejecuta la función de listener para inicializar el nodo de ROS y la recepción de datos enviados por los motores. Los datos del grupo se imprimen en la consola y se almacenan en varias listas las posiciones disponibles para enviar, tanto en sus valores de bits como en sus valores en grados. Luego, se crea una lista de listas con las posiciones disponibles y se muestran al usuario estas posiciones en sus valores en grados.

## Resultados

1. **Selección de Repositorios Específicos:** La elección de Dynamixel One Motor como repositorio principal destaca la importancia de identificar fuentes confiables y especializadas para optimizar el desarrollo del proyecto. La decisión de enfocarse en archivos específicos enriqueció el proceso y aceleró la implementación del laboratorio.

2. **Acceso Directo a Códigos Relevantes:** La decisión de utilizar los códigos de la carpeta de scripts dentro del repositorio seleccionado subraya la importancia de acceder a recursos que aborden directamente los aspectos necesarios para el proyecto. Esta elección no solo simplificó la programación, sino que también facilitó una comprensión más profunda de los conceptos clave asociados con el control de los motores Dynamixel.

3. **Experiencia Positiva en Colaboración:** La experiencia positiva al emplear los repositorios de referencia resalta la importancia de la colaboración y el intercambio de conocimientos en comunidades especializadas. Aprovechar los recursos existentes condujo a una eficiencia y comprensión superiores en comparación con la consideración de otros trabajos, enfatizando la relevancia de la colaboración y el aprendizaje compartido en entornos tecnológicos.
