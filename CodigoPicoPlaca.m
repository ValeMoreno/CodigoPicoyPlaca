
%%Código implementado en Matlab 
%%Código de Pico y Placa
%%Realizado por: Valeria Nathalie Moreno Hermosa

clc
clear all;
close all;

p = input('Por favor ingrese el número de Placa \nEj ABC0000: ','s');
f = input('Por favor ingrese la fecha de circulación \nEj 01/01/2000: ','s');
h = input('Por favor ingrese el horario de circulación \nEj 20:00: ','s');

%Último dígito del número de Placa
dp=str2double(p(length(p)));

%Día exacto de la semana
dd=str2double([f(1),f(2)]); %Día
mm=str2double([f(4),f(5)]); %Mes
yy=str2double([f(7),f(8),f(9),f(10)]); %Año

cal=calendar(yy,mm);
[aux,d]=find(cal==dd);

%Horario
hh=str2double([h(1),h(2)]); %Horas
mm=str2double([h(4),h(5)]); %Minutos
t=hh+(mm/60);

%Horario Pico y Placa
 h1=round(7:1/60:9.5,2);
 h2=round(16:1/60:19.5,2);

switch d
    
    case 1
        disp('NO APLICA, PUEDE CIRCULAR');
        
    case 2
        if dp==1 || dp==2
            [L1,L2]=Aplica(h1,h2,t);
        else
            disp('PUEDE CIRCULAR');
        end
              
    case 3
        if dp==3 || dp==4
            [L1,L2]=Aplica(h1,h2,t);
        else
            disp('PUEDE CIRCULAR');
        end
        
        
    case 4
        if dp==5 || dp==6
            [L1,L2]=Aplica(h1,h2,t);
        else
            disp('PUEDE CIRCULAR');
        end
        
    case 5
        if dp==7 || dp==8
            [L1,L2]=Aplica(h1,h2,t);
       else
            disp('PUEDE CIRCULAR');
        end
        
    case 6
        if dp==9 || dp==0
            [L1,L2]=Aplica(h1,h2,t);
        else
            disp('PUEDE CIRCULAR');
        end
        
    case 7
        disp('NO APLICA, PUEDE CIRCULAR');
        
    otherwise 
        disp('ERROR. DATOS MAL INGRESADOS');
        
end

        
        
