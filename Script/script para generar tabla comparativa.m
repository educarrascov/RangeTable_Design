plot(XVPROP,Y,'r')
hold on
plot(XVSAN,Y,'b')
hold on
grid on
xlabel('Tiempo de vuelo [s]')
ylabel('Alcance [m]')
title ('Comparación de tiempo de vuelo entre modelo propuesto y tabla SANOP')
legend('Propuesto','SANOP 44',4)
hold on
plot(XVPROP,Y,'rs','linewidth',3)
hold on
plot(XVSAN,Y,'bs','linewidth',3)
hold on
