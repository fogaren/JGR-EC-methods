% input is h, om, g % What is om? 
function[k] = wvnum_omvec(h,sigma,g)
%==========================================================================
% This function solves for wavenumber (k) using the linear dispersion 
% relation and an interative Newton-Raphson technique

% Developed by C.E. Reimers for the manuscript published 
% ***INSERT CITATION***

%*** INPUTS:
% h = 
% sigma = 
% g = 

%*** OUTPUT:
% k = wavenumber 
%==========================================================================

koh = (sigma.^2)*h/g;
kx = koh.^(.75);
khold = koh.*((exp(kx) + exp(-kx))./(exp(kx) - exp(-kx))).^(2/3);

% iterate w/Newton Raph method

for i = 1:100
dkh1 = koh - khold.*((exp(khold) - exp(-khold))./(exp(khold) + exp(-khold)));
dkh2 = -(khold./((0.5*(exp(khold) + exp(-khold))).^2))-...
     ((exp(khold) - exp(-khold))./(exp(khold) + exp(-khold)));
dkh = -dkh1./dkh2;
khnew = khold + dkh;

% convergence criterion

if abs(dkh./khnew) <= 0.00001
   break
else 
   khold = khnew;
end
end
k = khnew/h;

