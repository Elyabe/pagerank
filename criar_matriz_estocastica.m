function A = criar_matriz_probabilidade( A )
   um_prod = ones( size(A,1), 1 );
   for i = 1:size(A,1)
        g_emissao(i,1) = A(i,:)*um_prod;
        g_recepcao(i,1) = um_prod'*A(:,i);
   end
    for i = 1:size(A,1)
        if ( g_recepcao(i,1) ~= 0 )
            A(:,i) = A(:,i)/g_recepcao(i,1);
%         else
%             A(:,i) = 1/size(A,1);
        end
    end
end