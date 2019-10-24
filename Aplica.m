function [L1,L2] = Aplica(h1,h2,t)

L1=length((find(h1==t)));
L2=length((find(h2==t)));

if L1>0 || L2>0
    disp('NO PUEDE CIRCULAR');
else
    disp('PUEDE CIRCULAR');
end
               
end

