function[k] = wvnum_omvec(h,sigma,g)
%==========================================================================
% This function solves for wavenumber (k) using the linear dispersion 
% relation and an interative Newton-Raphson technique
% This function is called in pres2H.m

% Developed by Tuba Ozkan-Haller (2011, unpublished) 

%*** INPUTS: are defined in pres2H.m 
% h = mean water depth at the site (m); variable input is acth in pres2H.m
% sigma = 2*pi*freq; variable input is w in pres2H.m
% g = gravity (g = 9.81 m/s2)

%*** OUTPUT:
% k = wavenumber (rad/m)(-)?
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

