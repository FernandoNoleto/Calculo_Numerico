%-----------------------------------------------------------------------
%             -----------                             --------
%             script file                             testlu.m
%             -----------                             --------
%-----------------------------------------------------------------------
%              ----------------------------------------
%              Metodos Numericos para Sistemas Lineares
%              ----------------------------------------
%
%
%
%       --------------       ---------------------------
%       Programa Teste   -   Procedimento  lu  do Matlab
%---------------------       ---------------------------
%
%
%       --------------------
%       Variaveis de Entrada
%---------------------------
%       A   :  Matriz do Sistema Linear
%
%       b   :  Vetor do Lado Direito
%
%
%       ------------------
%       Variaveis de Saida
%-------------------------
%
%                  U   :  Matriz Triangular Superior
%
%                  L   :  Matriz Triangular Inferior
%
%                  P   :  Matriz de Permutacao
% 
%                  x   :  Solucao do Sistema Linear
%
%
%       ----------------
%       Dados de Entrada
%-----------------------
%
%       Gera uma Matriz Aleatoria
%--------------------------------
% A = rand(4,4);
%Matriz
A = [2,0,6
     2,8,1
     1,4,3];

%
%       Cria o Vetor do Lado Direito do Sistema
%----------------------------------------------
        b = [12
             14
             14];
        % b = sum(A');
        % b = b';     %  Define b como vetor coluna
        % disp(b)
%
%
%       --------------------------------------
%       Chamada do Procedimento  lu  do Matlab
%---------------------------------------------
        [L,U,P] = lu(A);
%
%
%       Calculo do vetor d = P.b
%-------------------------------
        d = P*b;
        % disp(d)
% disp(L)
% disp(d)

%
%       Resolucao do Sistema Triangular Inferior
%-----------------------------------------------
        [y] = LTriSol(L,d);
        disp(y)
%
%       Resolucao do Sistema Triangular Superior
%----------------------------------------------
        [x] = UTriSol(U,y);
        disp(x)
%
%
%

        disp('     Sistemas Lineares - Decomposicao  LU')
        disp('     ------------------------------------')
        disp('          ---------------------------')
        disp('          Procedimento  lu  do Matlab')
        disp('          ---------------------------')
        disp('      ')
%
        format long
        disp('    Solucao do Sistema Linear')
        disp('      ')
        disp(x)      
        format short
%
%
%-----------------------------------------------------------------------
%-----------------------------------------------------------------------
%--------------------------------------------------
%       Petronio Pulino
%       Departamento de Matemática Aplicada - D.M.A
%       IMECC - UNICAMP
%       e-mail: pulino@ime.unicamp.br
%       http://www.ime.unicamp.br/~pulino/MS411/
%--------------------------------------------------
%-----------------------------------------------------------------------
