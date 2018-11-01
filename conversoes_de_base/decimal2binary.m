% Feito
n = input('Digite um número decimal:. ');
q = fix(n/2);
r = n - (2 * q);

result = [r];

while q != 0

  	%result(end+1) = r
  	n = q;
  	q = fix(n/2);
  	r = n - (2 * q);
  	result(end+1) = r;
endwhile

disp('Representação final:. ');
disp(fliplr(result));