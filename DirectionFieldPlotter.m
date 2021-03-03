% Author: Mikael Amaral
%% Definindo o intervalo
lim_inf = input('Digite o limite inferior do intervalo do gráfico: ');
lim_sup = input('Digite o limite superior do intervalo do gráfico: ');
[x,y]=meshgrid(lim_inf:.2:lim_sup,lim_inf:.2:lim_sup);

%% Definindo a EDO
disp('------------------------------------------------------------------');
disp('-> Coloque divisões como: ./');
disp('-> Coloque multiplicações como: .*');
disp('-> Coloque potenciaições como: .^');
disp('------------------------------------------------------------------');
dy=input('Digite a função que descreve o campo de direções: ');
dx=ones(size(dy));

%% Normalizando o tamanho dos vetores
dyu = dy./sqrt(dx.^2+dy.^2);
dxu = dx./sqrt(dx.^2+dy.^2);

%% Plotando o campo de direção
quiver(x,y,dxu,dyu);
grid on