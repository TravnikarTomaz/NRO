function [znotraj_kroga, znotraj_kvadrata] = mcc_pi(n)
    % Generiraj naključne točke znotraj enotskega kvadrata
    x = 2*rand(1, n)-1;
    y = 2*rand(1, n)-1;

    % Preveri, katere točke so znotraj kroga
    radij = sqrt(x.^2 + y.^2);
    notranjost_kroga = radij <= 1;

    % Koordinate točk znotraj kroga
    krog_x = x(notranjost_kroga);
    krog_y = y(notranjost_kroga);

    % Koordinate vseh točk znotraj kvadrata
    kvadrat_x = x;
    kvadrat_y = y;

    % Vrni koordinate točk znotraj kroga in kvadrata
   
    znotraj_kvadrata = [kvadrat_x; kvadrat_y];
    znotraj_kroga = [krog_x; krog_y];
end