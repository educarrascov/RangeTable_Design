%función de dos variables sobre un dominio rectangular (Z=f(x,y))%

%gráfica mesh%
x=[-2:0.2:2]; %esta función divide una escala desde los valores extremos por el valor central%
y=[-2:0.2:2];
[X,Y]=meshgrid(x,y);
Z=X.*exp(-X.^2-Y.^2);%función u(x,y)=X^(X^2-Y^2)
mesh(X,Y,Z), figure(gcf);
xlabel('eje-X'), ylabel('eje-Y'), zlabel('eje-Z');


%La distribución inicial del calor en un plato de acero esta dada por la
%función: u(x,y)=80y^2e^(-x^2-0,3y^2)
%con -2.1<=x<=2.1
%    -6<=y<=6
%fuinción con crecimiento  de la rejilla de 0.15 en ambas direcciones%
x=[-2.1:0.15:2.1];
y=[-6:0.15:6];
[X,Y]=meshgrid(x,y);
Z=80*Y.^2.*exp(-X.^2-0.3*Y.^2);
mesh(X,Y,Z);

%GRAFICO DE CONTORNO EN 3-D%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
contour3(X,Y,Z)
x=[-2:0.2:2];
y=[-2:0.2:2];
[X,Y]=meshgrid(x,y);
Z=X.*exp(-X.^2-Y.^2);
%subplot para surf con sombreado aplanado%
subplot(1,2,1);
surf(X,Y,Z), shading flat;
title('sombreado aplanado');
xlabel('eje x'), ylabel('eje y'), zlabel('eje z');
%subplot para surf con sombreado estandar%
subplot(1,2,2);
surf(X,Y,Z), shading faceted;
title('sombreado estandar (por defecto)');
xlabel('eje x'), ylabel('eje y'), xlabel('eje z');

x=[-2:0.2:2];
y=[-2:0.2:2];
[X,Y]=meshgrid(x,y);
Z=X.*exp(-X.^2-Y.^2);
%subplot para surf con sombreado aplanado%
subplot(1,2,1);
surf(X,Y,Z), shading flat;
title('sombreado aplanado');
xlabel('eje x'), ylabel('eje y'), zlabel('eje z');
%subplot para surf con sombreado interpolado%
subplot(1,2,2);
surf(X,Y,Z), shading interp;
title('sombreado interpolado');
xlabel('eje x'), ylabel('eje y'), xlabel('eje z');

%un mapa de colores es una matriz de 3 columnas, en este caso viene por
%defecto los colores del jet (colores estándar)%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
%aquí se debe inresar la preferencia de colores;
colormap('hot')
%se puede selectar entre
%jet,HSV,hot,cool,spring,summer,autumn,winter,gray,bone,copper,pink%
surf(X,Y,Z),shading interp;
%sleccionables entre flat (aplanado), faceted (estándar), interp
%(interpolado)%


%GRAFICO DE MALLA (mesh) CON CORTINA%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
meshz(X,Y,Z)

%GRAFICO DE MALLA CON CONTORNO%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
meshc(X,Y,Z)

%GRAFICO DE SUPERFICIE (surf) CON CONTORNO%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
surfc(X,Y,Z)

%GRAFICO DE SUPERFICIE CON AlUMBRADO%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
surfl(X,Y,Z)

%GRAFICO DE CASCADA%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
waterfall(X,Y,Z)

%GRAFICO DE CONTORNO EN 2-D%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
contour(X,Y,Z)

%GRAFICO DE CONTORNO EN 3-D%
x=-10:0.5:10;
y=x;
[X,Y]=meshgrid(x,y);
Z=sin(sqrt(X.^2+Y.^2))./sqrt(X.^2+Y.^2+0.1);
contour3(X,Y,Z);

%crear una esfera%
[x,y,z]=sphere(20);
axis equal;
surf(x,y,z);
hold on
%en este sector se puede modificar la posicion en x e y de la esfera%
surf(x-3,y+2,z);
axis equal;


%ejemplo de surf y mesh dibujados en comparación%
%contiene errores%
function[x,y,z]=SurfExample
x1=linspace(-3,3,15);
y1=linspace(-3,13,17);
[x1,y1]=meshgrid(x1,y1)
z=x.^4+3*x.^2-2*x+6-2*y.*x.^2+y.^2-2*y;
subplot(1,2,1);
[x,y,z]=SurfExample;
surf(x,y,z)

