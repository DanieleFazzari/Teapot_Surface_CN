%Seleziono i punti di controllo
controlPoints = [3 5 7 4 -3 1; 4 3 2 -5 3 1];

%Aumentiamo la molteplicità di un punto di controllo,facendo vedere che la curva si avvicina a tal punto 
%Punto selezionato: (4,-5)

controlPoints = [3 5 7 4 4 -3 1; 4 3 2 -5 -5 3 1];
%controlPoints = [3 5 7 4 4 4 -3 1; 4 3 2 -5 -5 -5 3 1];

%Scelgo l'intervallo temporale selezioando istante iniziale e finale
tInterval = [0 5];
%Campioni temporali per la traiettoria, specificati come vettore
tSamples = 0:0.01:5;


[q,~,~,pp]=bsplinepolytraj(controlPoints,tInterval,tSamples)
plot(controlPoints(1,:),controlPoints(2,:),'xb-');
title('Curva B-Spline')
xlabel('X')
ylabel('Y')
hold on
fnplt(pp)