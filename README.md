# Reimers and Fogaren (2021)
## Wave-turbulence decomposition approach to access flux contributions at the primary wave frequencies to the total eddy covariance oxygen flux. 

This repository contains the necessary analyses materials for "*Bottom boundary layer, eddy-covariance, oxygen fluxes during winter on the Oregon Shelf*" published in JGR-Oceans by Reimers and Fogaren in 2021. Code included is for a phase-based method of spectral decomposition to separate wave-induced and turbulence-induced components of velocity and dissolved oxygen time-series in [MATLAB](https://www.mathworks.com/products/matlab.html). While this repository may continue to evolve, a realease (v1.0) was created to maintain a copy of the repository at the time of publication and has been archived: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4150102.svg)](https://doi.org/10.5281/zenodo.4150102)

## Data Availability Statement
The eddy-covariance (EC) data sets analyzed in Reimers and Fogaren 2021 are available from the [BCO-DMO data repository](https://www.bco-dmo.org/dataset/827116). CTD data are available from R2R cruise [DOI: 10.7284/907983](https://doi.org/10.7284/90783) and R2R cruise [DOI: 10.7284/908627](https://doi.org/10.7284/908627). Ocean Observatories data are available from the [OOI Data Portal](https://oceanobservatories.org/data/).

## Analysis
MATLAB materials for a phase-based method of spectral decomposition to separate wave-induced and turbulence-induced components of velocity and dissolved oxygen in time-series 
- These functions are applied to 15 min burts of 8-Hz data after rotation and detrending (see ***) 
  - Datasets:
    - Meteorological Data from the Central Surface Mooring: `deployment0010_CP01CNSM-SBD11-06-METBKA000-recovered_host-metbk_a_dcl_instrument_recovered_20181112T000012.513000-20181205T235959.678000.nc.` or `CP01CNSM_METBK1_2018-11-12_2018-12-06_RI.mat`  
  - Analysis:
      - `plotOOImetbk.m`, can use either netcdf or mat file, follow instructions in code comments.


## Copying/Running this repository
#### Local
- Make sure you have Git installed on your machine. For downloads/instructions for Windows/Mac/Linux, check out the [Git website](https://git-scm.com/) and/or the great [tutorial video](https://www.youtube.com/watch?v=wyiiTHVEF8k&feature=youtu.be) by UW eScience.
- In command line, navigate to where you would like the cloned directory, and run the following in your command line:
```bash
git clone https://github.com/fogaren/JGR-EC-methods.git
```
