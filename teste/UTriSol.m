%-----------------------------------------------------------------------
%             -------------                           -------
%             function file                           UTriSol
%             -------------                           -------
%-----------------------------------------------------------------------
%
%       -------------------------------------------
%       Resolucao de um Sistema Triangular Superior
%--------------------------------------------------
%          Substituicao Atrasada - Versao Linha
%          ------------------------------------
%
%
%       Chamada do procedimento UTriSol
%--------------------------------------
%       [x] = UTriSol(U,b)
%
%
%       Variaveis de Entrada
%---------------------------
%
%       U   :  Matriz Triangular Superior
%
%       b   :  Vetor do Lado Direito
%
%       Variavel de Saida
%------------------------
%
%       x   :  Vetor Solucao do Sistema Triangular Superior
%
%
function [x] = UTriSol(U,b)
    %----------------------------------
    %
    %
    %
    %       n : dimensao do Sistema Linear
                [n] = length(b);     
    %       gera um vetor coluna de ordem  n  nulo 
                  x = zeros(n,1);    
    %       precisao para o Teste de Singularidade
            epsilon = 1.0e-10;        
    %
    %
            for i = n:-1:1
    %               
                    soma = 0.0;
    %               
                    for j = (i+1):n
    %               
                        soma = soma + U(i,j)*x(j);
    %               
                    end
    %       
    %
    %       Verifica se a Matriz e' Singular
    %---------------------------------------
        %     if ( abs(U(i,i)) <= epsilon )
        %     disp('  '), disp('  ')
        %     error('      Sistema  Singular')
        %     end
    %
            x(i) = ( b(i) - soma) / U(i,i);
    %       
            end
    %
    %-----------------------------------------------------------------------
    %-----------------------------------------------------------------------
    %--------------------------------------------------
    %       Petronio Pulino
    %       Departamento de Matematica Aplicada - D.M.A
    %       IMECC - UNICAMP
    %       e-mail: pulino@ime.unicamp.br
    %       http://www.ime.unicamp.br/~pulino/MS411/
    %--------------------------------------------------
    