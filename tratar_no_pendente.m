% tratar_no_pendente
% 
% A : Matriz estocástica
function A = tratar_no_pendente( A )
 soma_col = sum(A);
 qtd_sites = size(A,1);
 j = find( soma_col == 0 );
 for i = 1:size( j, 2 )
    A( :, j(i) ) = ones( qtd_sites, 1 )/qtd_sites; 
 end
end