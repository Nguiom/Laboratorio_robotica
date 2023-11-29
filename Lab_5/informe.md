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

```
		q1=np.arctan2(y,x)
		a=np.sqrt(x**2+y**2)
		alp=np.arctan2(z-136,a)
		b=np.sqrt((z-136)**2+a**2)
		q3s=np.sqrt(1-((b**2-2*(106**2))/(2*(106**2)))**2)
		q3c=(b**2-2*(106**2))/(2*(106**2))
		q3=np.arctan2(q3s,q3c)
		bets=(106*np.sin(q3+np.pi))/b
		betc=np.sqrt(1-((106*np.sin(q3+np.pi))/b)**2)
		bet=np.arctan2(bets,betc)
		q2=alp+bet-np.pi/2
		rotc=((1.0*(-1.0*np.sin(q2 + 1.5707963267949))*np.sin(q3) + (1.0*np.cos(q2 + 1.5707963267949))*np.cos(q3)))/\
		(1.0*(1.0*(-1.0*np.sin(q2 + 1.5707963267949))*np.cos(q3) - (1.0**np.cos(q2 + 1.5707963267949))*np.sin(q3)))
		rots=1/(1.0*(-1.0*np.sin(q3)*np.sin(q2 + 1.5707963267949) + 1.0*np.cos(q3)*np.cos(q2 + 1.5707963267949))*rotc - \
		(1.0*np.sin(q3)*np.cos(q2 + 1.5707963267949) + 1.0*np.sin(q2 + 1.5707963267949)*np.cos(q3)))
		rotc=rotc*rots
		q4=np.arctan2(rots,rotc)
		return (q1,q2,q3,q4)
```
## Descripción del código de programación

Se implementaron los ecuaciones anteriores en un script en python llamado move.py, el cual recibe dos puntos en el espacio de trabajo y hace una itereación de 20 puntos entre los dos iniciales. Se calcula la inversa para cada punto y se le envia la posición deseada a cada servo para que llege al punto deseado.

## Resultados

1. **Video:**  [![Linea](https://img.youtube.com/vi/luGmmY54He8/maxresdefault.jpg)](https://youtu.be/luGmmY54He8)
2.  **intefaz:** ![interface](https://github.com/Nguiom/Laboratorio_robotica/assets/71941461/2fbedf83-b483-4bbc-ad78-9a3bf90d0612)
## Conclusiones

Como se puede ver el movimiento no es fluido, lo cual se debe a que no se uso un control de velocidad para controlar el movimiento, lo que se podria lograr implementando un calculo del jacobiano.
