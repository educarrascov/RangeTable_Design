%programa para dterminar parámetros de radar%
Ptx=280e3;
Pw=1.36e-6;
thetaH=1.8;
thetaV=23;
K=0.7;
RCS=6;
Taprima=65;
PD=65;
LRdb=1.9;
NFdb=9.4;
RPM=24;
T=1.54e-3;
Fo=3280e3;
tfa=2.25*60;
LAdb=1.08;
SNdb=16.2;
perdidaslineadb=0.65;
k=1.38e-23;
ROE=1.2;
%debemos empezar definiendo las fórmulas que actúan con cada parámetro%
%debemos TRASPASAR todos los db en veces%
LRveces=10^(LRdb/10);
NFveces=10^(NFdb/10);
LAveces=10^(LAdb/10);
SNveces=10^(SNdb/10);
%utilizamos las fórmulas para determinar temperatura del sistema%
Ta=(((0.88*Taprima)-254)/LAveces)+290;
Tr=290*(LRveces-1);
Te=290*(NFveces-1);
Ts=Ta+Tr+(Te*LRveces);
%ya obtuvimos el valor para completar el Ts, necesario para el No%
%No se determina con lo siguiente%
No=k*Ts;
NIwatts=No*(1/Pw);
NIdb=10*log(NIwatts/1e-3);%aqui se debe verificar que pasa con el NIdb
%seguimos con el ejemplo para obtener el n%
%obtenermos el ts%
ws=(2*pi)/(60/RPM);
ts=(deg2rad(thetaH))/ws;
%con todo determinamos el n%
n=ts/T;
%ahora debemos obtener el SNphi en veces y db%
SNphiveces=SNveces/n^0.8;
SNphidb=10*log(SNphiveces); %nuevamente hay problemas con conversion a db%
%como no pudimos convertir los watts ni veces a db, debemos ingresar
%directmente el valor para la determinación de la MDS%
SNphidb=8.92;
NIdb=-104.21;
MDSdb=NIdb+NFdb+SNphidb;
MDSwatts=NIwatts*SNphiveces*NFveces;%para determinarlo en watts se debe multiplicar por cada valor obtenido en veces o watts%
%ahora debemos determinar las pérdidas de retorno, la roe para determinar la potencia efectiva%
tau=(1-ROE)/(1+ROE);
tau2=tau^2;
POTef=(Ptx/1.16)*(1-tau2);
%recordar que el traspaso de las perdidas es de magnitud 1.16%
%ahora debemos determinar los parámetros del radar%
C=3e8;
Rd=(C*Pw)/2;





















