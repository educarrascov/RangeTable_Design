plot(X30,Y30,'r','linewidth',2)
grid on
hold on
axis([0,80000,0,12000])
hold on
xlabel('Alcance [m]')
ylabel('Altura [m]')
title ('Trayectoria del proyectil')
plot(XVACIO,YVACIO,'b','linewidth',2)
hold on
legend('Atmósfera','Zero Drag',-1)

XDRAG=XDRAG';
YDRAG=YDRAG';
YDRAG2=YDRAG2';