%-----------------------------------------------------------------------
%             -------------                        -------
%             function file                        LTriSol
%             -------------                        -------
%-----------------------------------------------------------------------
%
%       -------------------------------------------
%       Resolucao de um Sistema Triangular Inferior
%--------------------------------------------------
%          Substituicao Avancada - Versao Linha
%          ------------------------------------
%
%
%       Chamada do procedimento LTriSol
%--------------------------------------
%       [x] = LTriSol(A,b)
%
%
%       Variaveis de Entrada
%---------------------------
%
%       A   :  Matriz Triangular Inferior
%
%       b   :  Vetor do Lado Direito
%
%       Variavel de Saida
%------------------------
%
%       x   :  Vetor Solucao do Sistema Triangular Inferior
%
%
%
function [x] = LTriSol(A,b)
    %----------------------------------
    %
    %
    %
    %       n : dimensao do Sistema Linear
                [n]  =  length(b);     
    %       gera vetor coluna de ordem  n  nulo
                  x  =  zeros(n,1);   
    %       precisao para o Teste de Singularidade
            epsilon  =  1.0e-10;      
    %        
    %
            for i = 1:n
    %
                 soma = 0.0;
    %
                for j = 1:(i-1)
    %
                 soma = soma  +  A(i,j)*x(j);
    %
                end
    %
    %
    %       ---------------------------------
    %       Verifica se a Matriz  e' Singular
    %----------------------------------------
        %     if ( abs(A(i,i)) <= epsilon )
        %     disp('    '), disp('    ')
        %     error('        Sistema  Singular')
        %     end
    %
    %
            x(i) = ( b(i) - soma ) / A(i,i);
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
    