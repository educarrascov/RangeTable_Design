clear all;
clc;
%Este corresponde al filtro rojo, donde la imagen discrimina el color rojo
%y lo presenta en una imagen de escalas grises con resalto de rojo%
imagen = imread('trini.jpg');%con esto decimos que la variable imagen es la siguiente%
imshow(imagen)%con esto mostramos la imagen%
imagenGris = rgb2gray(imagen);%convierte imagen RGB colores a escala de grises%
imR = double(imagen(:,:,1));%acá se convierte a doble precisión cada color%
imG = double(imagen(:,:,2));
imB = double(imagen(:,:,3));
imagenR = (imR-imG-imB);
imagen_binaria = imagenR > 40;
%en esta parte, le puedo modificar el filtro según la cantidad de bits de
%un color que genera, si lo aumento, discrimina de peor manera, si lo
%disminuyo, aumenta la cantidad de rojo en la segunda imagen
imagen_binaria_filtrada = medfilt2(imagen_binaria);%proporcionar filtro de 2D%
mascara = 1-imagen_binaria_filtrada;
imagen_roja = double(imagenGris)/255;
imagen_verde = double(imagenGris) .* mascara/255;
imagen_azul = double(imagenGris) .* mascara/255;
imagen_final = cat(3,imagen_roja,imagen_verde,imagen_azul);
figure;
imshow(imagen_final);%muestra la imagen final%
%término de primer filtro de imagenes%