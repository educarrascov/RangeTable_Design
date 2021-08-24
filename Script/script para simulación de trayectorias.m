plot3(X5,Y5,Z5,'r','linewidth',3)
grid on
hold on
axis([0,18000,0,6500,0,250])
hold on
xlabel('Alcance [m]')
ylabel('Altura [m]')
zlabel('deriva [m]')
title ('Simulación de trayectorias para un proyectil HE 76mm')
plot3(X10,Y10,Z10,'b','linewidth',3)
hold on
plot3(X15,Y15,Z15,'g','linewidth',3)
hold on
plot3(X20,Y20,Z20,'c','linewidth',3)
hold on
plot3(X25,Y25,Z25,'m','linewidth',3)
hold on
plot3(X30,Y30,Z30,'y','linewidth',3)
hold on
plot3(X35,Y35,Z35,'k','linewidth',3)
hold on
plot3(X40,Y40,Z40,':b','linewidth',3)
hold on
plot3(X45,Y45,Z45,'--r','linewidth',3)
hold on
legend('5°','10°','15°','20°','25°','30°','35°','40°','45°',-1)
X5=X5';
Y5=Y5';
X10=X10';
Y10=Y10';

mesh(X45,Y45,Z45)
X15=X15';
Y15=Y15';
X20=X20';
Y20=Y20';
X25=X25';
Y25=Y25';
X30=X30';
Y30=Y30';
X35=X35';
Y35=Y35';
X40=X40';
Y40=Y40';
X45=X45';
Y45=Y45';


Z5=Z5';
Z10=Z10';
Z15=Z15';
Z20=Z20';
Z25=Z25';
Z30=Z30';
Z35=Z35';
Z40=Z40';
