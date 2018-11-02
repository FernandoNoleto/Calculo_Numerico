% Universidade Federal do Tocantins
% Cálculo Numérico
% Acadêmico: Fernando Barroso Noleto
% Resolução de Ax=b através da fatoração LU com pivoteamento parcial

disp('Resolução de Ax=b através da fatoração LU com pivoteamento parcial');

%Matriz
M = [2,0,6
     2,8,1
     1,4,3]

%Vetor dos termos independentes
v = [12
     14
     14]

[L,U,P] = lu(M); % Função que retorna a matriz 'L', a matriz 'U' e a matriz de Permutação 'P'

d = P*v; % vetor 'd' produto da matriz de permutação 'P' com o vetor dos termos independentes 'v'

% 
% Primeiro temos que resolver a matriz triangular inferior
% Resolução de sistema triangular inferior
% 

% L -> Matriz
% d -> vetor

tam = length(M); % tamanho da matriz 'M'
xi = zeros(tam,1); % Variável resultado do sistema triangular inferior que está sendo inicializado com 0's

for i = 1:tam % laço de repetição que vai percorrer todas as linhas da matriz 'M'
    soma = 0.0; % Variável auxiliar
    for j = 1:(i-1) % laço de repetição da que vai percorrer as colunas da matriz 'M'
        soma = soma + L(i,j)*xi(j); % somatório dos coeficientes multiplicados pelos valores de xi já encontrados
    end
    xi(i) = (d(i) - soma) / L(i,i); % divisão do valor do somatório encontrado pelo valor da matriz dos termos independentes
end

% disp(xi)

% 
% Depois resolvemos a matriz triangular superior utilizando o vetor resultante 'xi' da matriz triangular inferior
% Resolução de sistema triangular superior
% 

% U -> matriz
% xi -> vetor


tam = length(xi); % tamanho da matriz 'M' 
xs = zeros(tam,1); % Vetor resultante da matriz triangular superior que está sendo inicializado com 0's que será a resposta final

for i = tam:-1:1 % laço de repetição que vai da última linha para a primeira
    soma = 0.0; % Varíável auxiliar
    for j = (i+1):tam % laço que vai percorrer as colunas da matriz 'M'
        soma = soma + U(i,j)*xs(j); % somatório que acumula os valores da multiplicação dos coeficientes pelos valores xs já encontrados
    end
    xs(i) = (xi(i) - soma) / U(i,i); % divisão do valor do somatório encontrado pelo valor da matriz dos termos independentes
end

% disp(xs)


disp('Resposta:')
%formatação da resposta
for i = 1:tam
    resultado = sprintf('x%i = %.3f', i, xs(i));
    disp(resultado)
end

