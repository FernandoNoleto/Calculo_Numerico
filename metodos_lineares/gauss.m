% Universidade Federal do Tocantins
% Cálculo Numérico
% Acadêmico: Fernando Barroso Noleto
% Resolução de Ax=b através do método da Eliminação de Gauss


disp('Resolução de Ax=b através do método da Eliminação de Gauss');

%Matriz
M = [2,4,6
     2,8,4
     4,4,6]


%Vetor dos termos independentes
v = [10
     10
     10]

tam = size(M,1); %retorna o tamanho da matriz

M = [M';v']'; %Juntando a matriz 'M' com o vetor 'v' de termos independentes para formar a matriz ampliada
x = zeros(tam,1); %cria um vetor de 0's  de 'tam' (tamanho da matriz 'M') linhas e 1 coluna
for p=1:tam %laço de repetição que vai de 1 ao tamanho da matriz 'M'
    for k=[1:p-1,p+1:tam]; %eliminar todas as linhas exceto a linha pivô
        m=-M(k,p)/M(p,p); %fator de multiplicação ao pivô. M(k,p) dividido pelo elemento pivô
        M(k,:)=M(k,:)+m*M(p,:); %Atualizando o valor da linha k. A linha 'k' anterior somado a 'm' multiplicado a linha pivô
    end
end

x=M(:,tam+1)./diag(M); %Vamos usar a última coluna da matriz 'M' dividido pela diagonal da matriz 'M'


disp('Resposta');
%formatação da resposta
for i = 1:tam
    resultado = sprintf('x%i = %.3f', i, x(i));
    disp(resultado)
end