clc;
clear;

sensores=[0 0 0 0 0 1 1 1 1 1];

if (sum(sensores==0)>2)
    alarma = 1
    mensaje = 'error'
elseif (sum(sensores==0)>0)
    alarma = 2
    mensaje = 'precaución'
else 
    alarma = 0
    mensaje = 'todo bien'
end