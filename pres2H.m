function [Hsig,Tp,eta,u,w,dfreq]=pres2H(data,datas,dt,ins_h)
%This code uses near-bottom time series of pressure to compute surface wave
%charactersitics
% Developed by Tuba Ozkan-Haller 2011

t=(0:dt:dt*(length(data)-1));
s=1./dt;
pres=data';
h=datas';

npoints=length(pres);

% Compute the variance which will be checked later for the spectrum:
	vari=cov(pres);

nyquist=s/2;
delfreq=s/npoints;
freq=(delfreq:delfreq:nyquist);
lfreq=max(size(freq));
iwin=1;
	
%	
% The following is a check on the variance:
        Fn=fft(pres)/(npoints);
        varprime=Fn.*conj(Fn);
        check=sum(varprime(2:npoints));
% Compute the values of kh from the linear wave
%   dispersion relation. 

% Converting the frequencies  to angular frequencies:
w=2*pi*freq;
g=9.81;
acth=mean(h); %water depth at site
actd=ins_h;
actzl=acth-actd;

k=wvnum_omvec(acth,w,g);

%  Keep only those values of wk which are felt at the
%    gage according to deep water theory:  If the gage is below the
%    depth of L/2 then the motion should not be felt.  Note that
%    by exiting the program here values of k which have not been 
%    defined are equal to 0 by MATLAB.
for j=1:lfreq
	if (pi/k(j))<abs(actzl)
        attindex=j;
        k(j:lfreq)=zeros(size(k(j:lfreq)));
        break
        else attindex=npoints;
        end
end

dfreq=freq(attindex);

%  Here a k array is created mirrored about k(npoints/2+1) which can
%    be used to generate the FFT of the water surface using 
%    the program eta.m

k(lfreq+1:npoints-1)=fliplr(k(1:lfreq-1));
w(lfreq+1:npoints-1)=fliplr(w(1:lfreq-1));

%	
%   computes pressure attenuation factor Kp
% from the k vector (npoints-1 since mean is removed from freq)
%

Kp=cosh(k*actd)./cosh(k*acth);
invKp=1./Kp;
Feta=invKp.*Fn(2:npoints).*(npoints);

% The following is done so that there are no contributions to the
%  surface from higher frequencies where k was zeroed out.  It is 
%  a necessary step because Kp not = 0 when wk=0.  Additionally, 
%  Fn's are not zero, so Feta above is nonzero where it should 
%  be zero.  Note that in this range, the magnitude of Fn is small
%  anyway.
% It is important to notice the use of the counter attindex from dispersion.
% it marks the cutoff of the k's for deep water validity.

% now for velocities
g=9.81;
Kw=sinh(k*actd)./cosh(k*acth);
Fu=(g*k./w).*Kp.*Feta;
Fw=i*(g*k./w).*Kw.*Feta;

Feta(attindex:npoints-attindex)=Feta(attindex:npoints-attindex)*0;
Feta(2:npoints)=Feta;
Feta(1)=0;

Fu(attindex:npoints-attindex)=Fu(attindex:npoints-attindex)*0;
Fu(2:npoints)=Fu;
Fu(1)=0;

Fw(attindex:npoints-attindex)=Fw(attindex:npoints-attindex)*0;
Fw(2:npoints)=Fw;
Fw(npoints-attindex:npoints)=-Fw(npoints-attindex:npoints);
Fw(1)=0;

eta=ifft(Feta);
u=ifft(Fu);
w=ifft(Fw);
% Look at imaginary part to make sure it's zero
    imag_test=imag(eta(9));
    if abs(imag_test) > 1e-6
    display('ERROR...the imaginary part of eta timeseries is too big')
    end

    imag_test=imag(u(9));
    if abs(imag_test) > 1e-6
    display('ERROR...the imaginary part of u timeseries is too big')
    end

    imag_test=imag(w(9));
    if abs(imag_test) > 1e-6
    display('ERROR...the imaginary part of w timeseries is too big')
    end

Hsig=4.*sqrt(sum(abs(Feta/(npoints)).^2));

[temp,fin]=max(Feta(1:lfreq));
fp=freq(fin);
Tp=1./fp;




