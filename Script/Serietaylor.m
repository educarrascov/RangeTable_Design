function [t orden]=serietaylor(f,origen,rango,error)
fx=sym(f);
v=findsym(fx);
orden=0;
maximo=max(rango);
t=taylor(fx,v,origen,'order',orden);
while abs(subs(fx,maximo)-subs(t,maximo))>error
    orden=orden+1
    t=taylor(fx,v,origen,'order',orden);
end
