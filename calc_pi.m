st_Tock = 20000;
n = mcc_pi(st_Tock);
notranje= length(n);
area_pi(notranje,st_Tock)
risi_kroznico_in_tocke(st_Tock,1)

function [ocenaPi,napaka] = area_pi(notranje,st_Tock)
%Funkcija računa približno vrednost števila pi
ocenaPi = 4*notranje/st_Tock;
napaka = abs(ocenaPi-pi);
disp(['Ocenna π: ', num2str(ocenaPi)]);
disp(['Napaka: ', num2str(napaka)])
end
    
function risi_kroznico_in_tocke(stTock, r)
    x = 2 * rand(stTock, 1) - 1;
    y = 2 * rand(stTock, 1) - 1;
    radij = sqrt(x.^2 + y.^2);
    tockeZnotraj = radij <= r;
    tockeZunaj = radij > r;
    scatter(x(tockeZnotraj), y(tockeZnotraj), 50, 'green', '+');
    hold on;
    scatter(x(tockeZunaj), y(tockeZunaj), 50, 'red', '.');
    izrisi_kroznico(1);
    axis equal;
    title('Naključno generirane točke znotraj kvadrata');
    xlabel('x');
    ylabel('y');
    legend('Znotraj krožnice', 'Zunaj krožnice', 'Krožnica');
end

function izrisi_kroznico(r)
    theta = linspace(0, 2 * pi, 1000);
    x = r * cos(theta);
    y = r * sin(theta);
    plot(x, y, 'yellow', 'LineWidth', 3);
end






   
