% Universidade Federal do Tocantins
% Cálculo Numérico
% Acadêmico: Fernando Barroso Noleto
% Fatoração de Cholesky

disp('Fatoração de Cholesky');

%Matriz
M = [  4  12 -16;
      12  37 -43;
     -16 -43  98]


[lin,col] = size(M); % Retorna a quantidade de linhas e colunas da matriz 'M'

for i = 1:lin % Laço de repetição para percorrer as linhas da matriz
    soma = 0.0; % Variável auxiliar
    for k = 1:(i-1) % Laço de repetição que percorre até a linha atual -1
        soma = soma + G(k,i)*G(k,i); % Somatório dos valores já encontrados com o quadrado da posição (k,i) da matriz 'G'
    end
    aux = M(i,i) - soma; % Variável auxiliar que armazena o valor da subtração entre o valor da posição (i,i) da matriz 'M' e o somatório obtido anteriormente
    G(i,i) = sqrt(aux); % Obtendo a raiz do valor de aux para colocar na posição (i,i) da matriz 'G'
    for j = (i+1):col % Laço de repetição que vai percorrer as colunas
        soma = 0.0; % Variável auxiliar
        for k = 1:(i-1) % Laço de repetição que percorre a primeira linha até a linha atual -1
            soma = soma + G(k,i) * G(k,j); % Somatório dos valores já encontrados com a multiplicação da posição (k,i) e (k,j) d amatriz 'G'
        end
        G(i,j) = (M(i,j) - soma) / G(i,i); % A posição (i,j) da matriz 'G' recebe a divisão entre a subtração da posição (i,j) da matriz 'M' com o somatório encontrado e a posição (i,i) da mariz 'G'
    end
end

disp('Resposta');
disp(G)