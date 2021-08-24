plot(XDRAG,YDRAG,'r','linewidth',2)
grid on
hold on
axis([0,3,0,0.45])
hold on
xlabel('Número de MACH')
ylabel('Coeficiente de Drag [Cd]')
title ('Coeficiente de resistencia aerodinámica')
plot(XDRAG,YDRAG2,'b','linewidth',2)
hold on
legend('Función de muestra','Función de ajuste',4)


