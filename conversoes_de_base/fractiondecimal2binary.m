% Feito
n = input('Digite um numero decimal fracionario:. ');
r = n;
%k = 1;
%dk = 0;
parada = 0;

result = [];

while 1
  	if 2*r >= 1
    	d = 1;
  	else
    	d = 0;
  	endif
  	result(end+1) = d;
  
  	r = 2*r - d;
  	if r == 0 || parada > 20
	    break;
  	endif
  	parada = parada+1;
endwhile

disp('Representação final:. ');
disp('0.'), disp(result)
%printf('0.%d', result);

  
