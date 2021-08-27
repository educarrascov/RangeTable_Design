<p style='text-align: right;'>
  
# Diseño de Tablas de Tiro utilizando el Modelo Modificado de Masa Puntual 

**Eduardo Carrasco Vidal**, Oficial de Marina, Ingeniero Civil Industrial.
  
Enlace a la publicación del documento en [Revista de Marina, Año CXXXIII, Volumen 135, Número 963.](https://revistamarina.cl/es/articulo/diseno-de-tablas-de-tiro-utilizando-el-modelo-modificado-de-masa-puntual)    

Enlace al .pdf de la [Publicación.](https://github.com/educarrascov/RangeTable_Design/blob/main/PDF/1.%20Modelo%20Modificado%20Masa%20Puntual%20para%20Tablas%20de%20Tiro.pdf)
___________
  
_**Resumen**:
La balística nace con la necesidad de predecir el comportamiento de las armas, enfocada en el estudio de las fuerzas físicas que afectan al proyectil tanto al interior del cañón como en su trayectoria de desplazamiento e impacto. Una adecuada simulación de esta trayectoria, utilizando el Modelo Modificado de Masa Puntual, permite predecir el punto de impacto del proyectil y, en consecuencia, la generación, a través de un modelo matemático, de su tabla de tiro en condiciones de atmósfera real._

**Palabras Claves:
Balística, Tabla de Tiro, Simulación, Predicción, Oto-Melara.**
  
_________
  
## Balística:  
Debido a la acelerada evolución tecnológica en el ámbito de la guerra convencional, desde la creación de los primeros proyectiles para el combate de superficie, nace la necesidad de predecir el comportamiento de los cuerpos lanzados al aire y su implicancia en la operatividad de una fuerza naval.
Considerando a un proyectil como un objeto lanzado al espacio por la acción de un empuje inicial, el cual, durante su desplazamiento es afectado por diversas fuerzas que lo hacen describir una trayectoria parabólica, es que la balística exterior, se constituye como la encargada de realizar su análisis en vuelo y establecer su punto de caída. A partir de esta premisa, se pueden generar, en base al análisis de las trayectorias, una tabla de tiro que permite bajo ciertas condiciones, ya sean internas (particularidades del cañón y proyectil) o externas (del medio en el que se desplaza) determinar la posición futura del objeto.
Los fabricantes de munición generan los análisis balísticos adecuados para predecir el comportamiento de sus proyectiles, pero, en algunos casos, otras empresas construyen dicha munición y realizan homologaciones de las tablas de tiro directamente del fabricante principal, lo cual, va en desmedro de la confiabilidad y performance del arma. 
Se ha detectado que, en algunos casos, dichas homologaciones se realizan aun sabiendo que la munición posee distinto peso, diámetro o configuración física, lo que afecta directamente a la predicción del comportamiento balístico y en algunos casos, a la seguridad de la Unidad que dispara.
Es por lo anterior, que se hace necesario establecer un software matemático que permita predecir el comportamiento balístico de los proyectiles de una manera estandarizada, objeto se pueda verificar la real confiabilidad de la munición por adquirir. Para su verificación, se debe considerar que la balística en el vacío sólo es útil para conocer la génesis del fenómeno y que se debe realizar un análisis físico de las trayectorias en balística real, es decir, con presencia de atmósfera.
Para este análisis, de debe tener presente que existen dos métodos de estabilización de proyectiles en atmósfera real: el primero es el estabilizado por cola, como los morteros de artillería y el segundo método es el estabilizado por rotación (giro-estabilizados), como los proyectiles de cañón, el cual será analizado a continuación:
  
## Trayectoria de Proyectiles Rotacionales.
En una atmósfera estándar donde no existe viento, la trayectoria de un proyectil es una parábola determinada por la resistencia del aire medida en el plano vertical; pero, la trayectoria se mueve además en un plano curvo debido a su rotación, que causa una deriva en un plano perpendicular al de las abscisas, es por esto que el proyectil giro-estabilizado sufre deriva lateral originada por el rozamiento con el aire al girar alrededor de su eje (movimiento de rotación axial), por lo cual, el análisis debe ser realizado en 3 dimensiones (X,Y,Z).
Cabe destacar que existen diversos efectos que se superponen para producir deriva, de todos ellos, el más importante es el movimiento giroscópico, este efecto ocasionado por la no coincidencia del centro de empuje aerodinámico con el centro de gravedad, produce los movimientos combinados de precesión y nutación, dando como resultado que un proyectil que gire a derechas, se desvíe a la derecha y otro que gire a izquierdas, se desvíe a la izquierda.
En base a las condiciones planteadas, se puede determinar que el elemento principal que afecta al desplazamiento del proyectil en las 3 dimensiones es el aire y su consecuente resistencia aerodinámica, para lo cual, se efectuará el siguiente análisis:

## Resistencia Aerodinámica.
La mecánica de fluidos es la rama que se ocupa del movimiento e interacción del aire y de otros fluidos, este mismo, genera resistencia aerodinámica que afecta a la trayectoria de los proyectiles, puesto que la presencia de un objeto en un fluido modifica la repartición de presiones y velocidades de las partículas del aire, modificando la fuerza de sustentación y de resistencia que influyen preponderantemente en el alcance y punto de impacto del proyectil. Para efectos de análisis, la acción que el aire ejerce sobre cualquier cuerpo que se desplaza, puede reducirse a una fuerza única ejercida sobre su centro de gravedad.
En un fluido real como es el caso de la atmósfera terrestre, existe una fuerza adicional causada por la resistencia del fluido en el proyectil, lo que produce un empuje opuesto al avance conocido como drag aerodinámico. 
El drag aerodinámico está compuesto por 3 factores principales: rozamiento superficial (skin friction), resistencia de culote o base (base drag) y la resistencia al avance (wave drag). El drag de rozamiento superficial es causado por la resistencia del fluido en la superficie del proyectil, la resistencia de culote es causada por la turbulencia del aire donde un pequeño flujo se forma por diferencia de presiones entre la parte anterior y posterior del proyectil y es función del área del culote, por último, la resistencia al avance es causada por la compresión y expansión de los gases del fluido al entrar en contacto con el proyectil y depende de la forma aerodinámica que tenga.
En base a lo planteado anteriormente, se realizó un modelo computacional de la pmunición a través de un software CAD (Computer-Aided Design), utilizando los planos de un proyectil Oto-Melara 76/62.

<img src="img/Fig 1.png" align="center" width = "600px"/>
    
Figura N° 1: Modelo digital del proyectil 76/62.
  
Luego, se utilizó un software de mecánica de fluidos CFD (Computational Fluid Dynamics) para simular un túnel de viento supersónico  que permitiera determinar el coeficiente de drag en función de la velocidad, como se muestra en la siguiente figura.
                                     
<img src="img/Fig 2.png" align="centre" width = "600px"/>
  
Figura N° 2: Simulación del Proyectil en Software (CFD).
  
Es importante señalar que, el coeficiente de drag es una medida que demuestra la eficiencia de un objeto en función de la resistencia que impone el fluido, dependiendo de dos factores principales: el número de Mach (estimación de la velocidad del fluido en base a la velocidad del sonido) y la forma aerodinámica de un proyectil determinado. Este coeficiente, es representado en una curva que varía en función de la velocidad, creada a partir de los valores obtenidos del análisis del túnel de viento, como se muestra en la siguiente figura.
  
<img src="img/Fig 3.png" align="centre" width = "600px"/>
  
Figura N° 3: Gráfico de coeficiente de drag en función del número de MACH.
  
Como se observa, el coeficiente de drag además tiene un alto valor en la región de 1 Mach, donde el proyectil está tratando de atravesar la barrera del sonido y se reduce de forma constante en la región supersónica hasta que se estabiliza.
Una vez determinado el coeficiente de drag en función de la velocidad para esta munición en particular (76/62), se debe efectuar la simulación utilizando una atmósfera estandarizada (ISA International Standard Atmosphere – ICAO International Civil Aviation Organization) que permita sobre ella, realizar correcciones, adecuaciones y variaciones similares a las reales al momento del disparo.

## Atmósfera Estandarizada.
La atmósfera estandarizada es un estándar de la ISO (International Standard Organization) desarrollado como un modelo de atmosfera terrestre que permite obtener valores de presión, temperatura, densidad y viscosidad del aire en función de la altitud; se utiliza principalmente para la confección de cálculos aerodinámicos, navegación aérea y cálculos balísticos.
Dentro de las hipótesis que plantea para establecer una atmósfera normalizada, se encuentran las siguientes: Grado de humedad nulo, atmósfera en equilibrio (inexistencia de vientos) y que se cumpla la ley de los gases perfectos. En base a estas condiciones, se presenta un extracto de la atmósfera estandarizada en la siguiente figura.
  
<img src="img/Fig 4.png" align="centre" width = "700px"/>
  
Figura N° 4: Extracto de la Atmósfera Estandarizada ISA-ICAO.
  
Con las condiciones de la Atmósfera Estandarizada y la determinación del coeficiente de drag en función de la velocidad, podemos modelar el comportamiento balístico del proyectil utilizando el Modelo Modificado de Masa Puntual que se presenta a continuación.
  
## Modelo Modificado de Masa Puntual.
Los requerimientos para que un modelo pueda ser capaz de representar adecuadamente el comportamiento del proyectil en vuelo, son diversos. Estos, deben ser capaces de modelar todas las fuerzas que actúan sobre el objeto y poder realizar cambios bajo condiciones no estándar, esto se refiere a estimar con cierto grado de confianza, la predicción de la trayectoria bajo cualquier condición que se presente.
Dentro de los modelos que se utilizan para representar las trayectorias, se encuentran: el modelo simplificado de masa puntual, el modelo modificado de masa puntual y el modelo de 6 grados de libertad (sólido rígido).
El modelo simplificado de masa puntual plantea un desarrollo matemático rápido, pero de limitadas capacidades, al considerar que toda la masa del proyectil se ha concentrado en el centro de gravedad (masa puntual) y que no existe rotación terrestre ni movimientos giroscópicos en el proyectil, siendo útil sólo para proyectiles estabilizados por cola debido a que el modelo no es capaz de representar la deriva (eje Z) a causa del movimiento giroscópico.
El modelo de 6 grados de libertad permite realizar el estudio completo del proyectil considerado como sólido rígido, para lo cual supone incluir no sólo las fuerzas y momentos principales, sino también las fuerzas y momentos de amortiguación. Dentro de las consideraciones que se tiene en la utilización de este modelo, se encuentran: el movimiento del centro de gravedad y el movimiento del eje del proyectil en torno al centro de gravedad (rotación axial). Si bien el modelo de 6 grados de libertad presenta una acabada representación de la trayectoria del proyectil, la complejidad de su método de integración genera un desgaste significativo de tiempo. 
El modelo modificado de masa puntual permite una correlación entre velocidad de integración y exactitud en la determinación de la trayectoria puesto que, considera los movimientos giroscópicos y mediante la aplicación de correcciones, es posible determinar una adecuada representación de la cinemática, considerando el efecto Magnus, Coriolis, esfericidad terrestre, entre otros; además, el trabajo con ecuaciones vectoriales más amigable.
Resultados de simulación de trayectorias en gráficos de 2D y 3D.
El modelo seleccionado permite modelar las trayectorias para este caso particular, donde las ecuaciones de movimiento consideran la corrección por fuerza Drag, fuerza Coriolis, esfericidad terrestre, efecto Magnus y movimientos giroscópicos. 
Enunciadas las condiciones atmosféricas estandarizadas, y disponiendo de un determinado Δt, se utilizan las ecuaciones y parámetros  que describen el movimiento del proyectil y tras su integración, se obtienen las siguientes trayectorias para ángulos de proyección desde 5°a 45° según lo muestra el gráfico de simulación de trayectorias realizada en el software MATLAB para el eje de las ordenadas, de las abscisas y el eje Z correspondientemente. 
  
<img src="img/Fig 5.png" align="centre" width = "650px"/>
  
Figura N° 5: Simulación de trayectorias en MATLAB, eje X e Y.

<img src="img/Fig 6.png" align="centre" width = "650px"/>
  
Figura N° 6: Simulación de trayectorias en MATLAB, eje X, Y, Z.
    

## Tabla de Tiro
La tabla de tiro principal permite la determinación de un ángulo de elevación necesario para batir la proyección sobre el plano horizontal (tabla de tiro de superficie) de un blanco, a una determinada distancia e incluye correcciones que se añaden linealmente y corresponden a cambios atmosféricos, de velocidad inicial, de peso del proyectil y de viento; si bien, la corrección lineal no es totalmente correcta, se puede asumir esta suposición debido a que las correcciones representan valores pequeños, comparadas con el alcance total.
La tabla de tiro tiene como entrada los alcances tabulados cada 500 [m] y como salida el ángulo de elevación. Dentro de las consideraciones que se necesitan para su construcción, se encuentran: que el punto de caída esté a la misma altura que la posición de disparo (nivel del mar), que la aceleración de Coriolis no afecte la trayectoria  y que las condiciones atmosféricas sean normalizadas a ISA (ICAO). Para la construcción de la tabla de tiro, se exigen diversas etapas de cálculo que concluyen con la presentación de un extracto de los resultados, como se muestran en la siguiente figura: 

<img src="img/Fig 7.png" align="centre" width = "750px"/> 
  
Figura N° 7: Extracto de la Tabla de Tiro diseñada.

## Validación del Modelo:
Para la validación de la tabla de tiro diseñada, se realizó una comparación con la tabla SANOP 44 de la South African Navy de un montaje Oto-Melara 76/62 con las mismas características físicas, geométricas y métricas que el proyectil HE 76mm utilizado. 

<img src="img/Fig 8.png" align="centre" width = "750px"/>
  
Figura N° 8: Extracto de la comparación entre Tabla de Tiro diseñada y SANOP.

Como se observa en la tabla comparativa, las diferencias de distancias tienen un margen que no supera el 2% llegando en algunos casos a presentar un margen menor al 1%. Por último, con el propósito de graficar las diferencias entre el modelo propuesto y el validado, se realizó una comparación tanto de los ángulos de disparo como del tiempo de vuelo en función del alcance, según lo muestran las siguientes figuras: 

<img src="img/Fig 9.png" align="centre" width = "650px"/>
  
Figura N° 9: Gráfico de comparación entre ángulo de disparo y alcance.

<img src="img/Fig 10.png" align="centre" width = "650px"/>
  
Figura N° 10: Gráfico de comparación entre tiempo de vuelo y alcance.

## Conclusiones:
De acuerdo a lo planteado anteriormente, tras los resultados obtenidos por la simulación y ejercida la comparación con una tabla validada; se puede concluir que el modelo presentado permite una adecuada predicción de la trayectoria de un proyectil en condiciones de atmósfera real, lo que constituye un apoyo para la toma de decisiones en materias de adquisición de munición y de confiabilidad del arma. 
De igual manera, es importante señalar que el estudio acabado de las fuerzas físicas que afectan al proyectil, contribuye a incrementar la performance del arma y reducir los riesgos operacionales.
Por último, cabe señalar que la determinación del coeficiente de drag de un proyectil específico, utilizando un túnel de viento computacional, junto con el uso del modelo de simulación detallado en este artículo, permite la creación de futuras tablas de tiro a nivel nacional.

## Bibliografía:
1. Baranowski, L. (2013). Equations of motion of a Spin-Stabilized Projectile for Flight Stability Testing [en línea]. Varsovia, Polonia: s.n. Disponible en: http://www.ptmts.org.pl/2013-1-baranowski.pdf.
2. Barry, R. & Chorley, R. (1999). Atmósfera, Tiempo y Clima. Barcelona, España: Ediciones Omega.
3. Carrasco [Partarrieu P.G.], E. (2015). Trayectorias Balísticas de proyectiles rotacionales HE 76mm, de un Cañón Oto-Melara 76/62. Trabajo de Titulación para optar al Título de Ingeniero en Armas. Academia Politécnica Naval, Viña del Mar.
4. Chand, K. & Panda, H. (2007). Mathematical Model to Simulate the Trajectory Elements of an Artillery Projectile Proof Shot [en línea]. 1. Balasore, India: s.n. Disponible en: http://publications.drdo.gov.in/ojs/index.php/dsj/article/view/1741.
5. Cucharero Pérez, F. (1992). Balística Exterior. Madrid, España: Ministerio de Defensa, Secretaría General Técnica.
6. Fann [Morris P.G.], C. (2006). Development of an Artillery Accuracy Model. Tesis para optar al grado académico de Master of Science in Engineering Science (Mechanical Engineering). S.l.: U.S. Naval Post Graduate School, Monterey - California.
7. Hainz, L. & Costello, M. (2005) Modified Proyectile Linear Theory for Rapid Trayectory Prediction. Center for Advanced Machine Mobility, Georgia Institute of Technology.  [en línea]. Disponible en: http://camm.gatech.edu/images/6/64/Hainz_2005_ModifiedProjectileLienarTheory.pdf.
8. Lieske, R. & Reiter, M. (1966) Equations of Motion for a Modified Point Mass Trayectory. Defense Technical Information Center [en línea]. Disponible en: http://www.dtic.mil/dtic/tr/fulltext/u2/485869.pdf.
9. South African Navy, (1981). 76/62 Range Table SANOP 44. Pretoria, Sudáfrica: Naval Chieff Headquarters.
10. Skande [Erkisson P.G.], M. (2014). Numerical Solution to a Nonlinear External Ballistics Model for a Direct Fire Control System. Tesis para optar al grado académico de Master of Science in Industrial Engineering and Management Machine Design. 
11. S.l.: Kungliga Tekniska Högskolan (KTH), Royal Institute of Technology, Stockholm.
12. Royal Navy, (1984). Textbook of Ballistics and Gunnery. Londres, Inglaterra.: Her Majesty´s Stationery Office.

  </div>
