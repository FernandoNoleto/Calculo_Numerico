% Universidade Federal do Tocantins
% Cálculo Numérico
% Acadêmico: Fernando Barroso Noleto
% Resolução de um Sistema Triangular Superior

disp('Resolução de um Sistema Triangular Superior');

%Matriz triangular superior
M = [2,4,6
     0,2,4
     0,0,1]


%Vetor dos termos independentes
v = [10
     10
     10]

tam = size(M,1); %retorna o tamanho da matriz
    
x(tam) = v(tam) / M(tam,tam); %pega o valor do último x (posição tam,tam)
for i = tam-1:-1:1 %laço de repetição a partir da penúltima linha para a primeira linha
    aux = 0; %variável auxiliar
    for j = i+1:tam %laço de repetição a partir da linha atual +1 até o tamanho da matriz
        aux = aux + M(i,j) * x(j); %a variável auxiliar é o somatório dos valores já calculado multiplicado pelos seus coeficientes
    end
    x(i) = (v(i) - aux) / M(i,i); %x(i) recebe a subtração do termo independe com a variável auxiliar
end

disp('Resposta:')

%formatação da resposta
for i = 1:tam
    resultado = sprintf('x%i = %.3f', i, x(i));
    disp(resultado)
end
