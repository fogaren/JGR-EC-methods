# Reimers and Fogaren (2021)
## Wave-turbulence decomposition approach to assess flux contributions at the primary wave frequencies to the total eddy covariance oxygen flux. 

This repository contains the necessary analyses materials for "*Bottom boundary layer oxygen fluxes during winter on the Oregon Shelf*" published in JGR-Oceans by Reimers and Fogaren in 2021. Code included is for computing surface wave characteristics and a phase-based method of spectral decomposition to separate wave-induced and turbulence-induced components of velocity and dissolved oxygen time-series in [MATLAB](https://www.mathworks.com/products/matlab.html). While this repository may continue to evolve, a release (v1.0) was created to maintain a copy of the repository at the time of publication and has been archived: 

## Data Availability Statement
The eddy-covariance (EC) data sets analyzed in Reimers and Fogaren 2021 are available from the [BCO-DMO data repository](https://www.bco-dmo.org/dataset/827116). CTD data are available from R2R cruise [DOI: 10.7284/907983](https://doi.org/10.7284/90783) and R2R cruise [DOI: 10.7284/908627](https://doi.org/10.7284/908627). Ocean Observatories data are available from the [OOI Data Portal](https://oceanobservatories.org/data/).

## Analysis
MATLAB materials for a phase-based method of spectral decomposition to separate wave-induced and turbulence-induced components of velocity and dissolved oxygen in time-series 
- These functions are applied to 15 min bursts of 8-Hz data after rotation and detrending 
  - `pres2H.m` This function uses near-bottom time series of pressure to compute surface wave characteristics using linear water wave theory
      - Developed by Tuba Ozkan-Haller (2011, unpublished).
  - `waveturb_decomp.m` This function provides code to separate wave and turbulence components of Reynolds Stresses and EC oxygen fluxes by the phase method [(Bricker and Monismith, 2007)]( https://doi.org/10.1175/JTECH2066.1) 
      - Developed by C.E. Reimers (2020).
  - `wvnum_omvec.m` This function solves for wavenumber using the linear dispersion relation and an iterative Newton-Raphson technique
      - Developed by Tuba Ozkan-Haller (2011, unpublished).


## Copying/Running this repository
#### Local
- Make sure you have Git installed on your machine. For downloads/instructions for Windows/Mac/Linux, check out the [Git website](https://git-scm.com/) and/or the great [tutorial video](https://www.youtube.com/watch?v=wyiiTHVEF8k&feature=youtu.be) by UW eScience.
- In command line, navigate to where you would like the cloned directory, and run the following in your command line:
```bash
git clone https://github.com/fogaren/JGR-EC-methods.git
```
