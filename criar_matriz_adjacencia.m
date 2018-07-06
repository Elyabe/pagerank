% Autor: Elyabe Alves elyabe@outlook.com 20181
% sites_links : links origem -> destino
% qtd_sites : quantidade de páginas do conjunto
% W : matriz de adjacência do grafo de conexão das páginas
function W = criar_matriz_adjacencia( sites_links, qtd_sites )
    W = zeros( qtd_sites );
    for lk = 1:size( sites_links, 1 )
        W( sites_links(lk,1), sites_links(lk,2) ) = 1;
    end
    W = W';
end