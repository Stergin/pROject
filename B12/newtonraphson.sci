function [x,nmax] = newtonraphson(x0,tol)
  
  
  
  x(1)=x0;
  if (192*x(1)^5-192*x(1)^3+36*x(1))~=0
    x(2)=x(1)-(fb12(x(1)))/(192*x(1)^5-192*x(1)^3+36*x(1));
  else
    break
  end
  i=2; 
  while abs(x(i)-x(i-1))>=tol
    if (192*x(i)^5-192*x(i)^3+36*x(i))~=0
      x(i+1)=x(i)-(fb12(x(i)))/(192*x(i)^5-192*x(i)^3+36*x(i));
      i=i+1;
      nmax=i;
    else
      break
    end
    
  end
endfunction
