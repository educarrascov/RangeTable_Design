plot(XDRAG,YDRAG,'r','linewidth',2)
grid on
hold on
axis([0,3,0,0.45])
hold on
xlabel('N�mero de MACH')
ylabel('Coeficiente de Drag [Cd]')
title ('Coeficiente de resistencia aerodin�mica')
plot(XDRAG,YDRAG2,'b','linewidth',2)
hold on
legend('Funci�n de muestra','Funci�n de ajuste',4)


