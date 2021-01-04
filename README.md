# ECS Observatory Collaboration

This repository contains all of the necessary analyses and materials for Reimers and Fogaren 2020, "*title here*". Code and data included are for investigation into . The code and data within this directory analysis of INSERT in [MATLAB](https://www.mathworks.com/products/matlab.html). While this repository may continue to evolve, a realease (v1.0) was created to maintain a copy of the repository at the time of publication and has been archived: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4150102.svg)](https://doi.org/10.5281/zenodo.4150102)

## Data
Data included in the analyses and figures presented is located at INSERT for download.

## Analysis
MATLAB materials for data analysis and figure production. See **analysis** folder for additional documentation on included files.

- **Figure 2**
  - Datasets:
    - Met package Data from Pioneer Inshore Surface Mooring*: `CP03ISSMmetpackage.mat`
    - can be requested via M2M: `M2M_Data_Figure2.m`
  - Analysis:
    - `Figure2.m`
    - or `Figure2.mlx` (live editor)

- **Figure 3**
  - Datasets:
    - Meteorological Data from the Central Surface Mooring: `deployment0010_CP01CNSM-SBD11-06-METBKA000-recovered_host-metbk_a_dcl_instrument_recovered_20181112T000012.513000-20181205T235959.678000.nc.` or `CP01CNSM_METBK1_2018-11-12_2018-12-06_RI.mat`  
  - Analysis:
      - `plotOOImetbk.m`, can use either netcdf or mat file, follow instructions in code comments.

- **Figure 4**  
  - Datasets:
    - Global satellite sea surface temperature data (in netcdf) is retrieved from [NASA's Jet Propulsion Laboratories Group for High Resolution SST webpage](https://podaac.jpl.nasa.gov/dataset/MUR-JPL-L4-GLOB-v4.1). Please find specifics located in the Data Availability statement of Levine et al. (2020).  
  - Analysis:
      - `plotGHRSST_ooi.jnl` and corresponding functions to run code in ferret analysis folder

- **Figure 5**
  - Datasets:
    - Met package Data from Pioneer Inshore Surface Mooring*: `CP03ISSMmetpackage.mat`
    - CTD Profiler Data from Pioneer Central Offshore Profiler Mooring*: `CP02PMCOProfilerCTD.mat`
    - Oxygen Data from Pioneer Central Offshore Profiler Mooring*: `CP02PMCOProfilerDO.mat`
    - Flourometer and CDOM Data from Pioneer Central Offshore Profiler Mooring*: `CP02PMCOProfilerFLORT.mat`
    - can be requested via M2M: `M2M_Data_Figure5.m`
  - Analysis:
    - `Figure5.m`
    - or `Figure5.mlx` (live editor)

`ProfilerCTD_RequestsAndAnalysis.ipynb` in the analysis directory contains the necessary Python code for data acquisition, analysis, and creation of **Figure 6** and **Figure 7**
- **Figure 6**
  - Datasets (*Available in a merged csv named `CP02PMCO_combined.csv`):
    - CTD Data from the Central Offshore Profiler*: `CP02PMCO_ctd.csv`
    - Oxygen Data from the Central Offshore Profiler*: `CP02PMCO_DO.csv`
    - Flourometer Data from the Central Offshore Profiler*: `CP02PMCO_flor.csv`
    - WOA-18 Decadal average of Temperature, Salinity, and Oxygen: `woaDecadalAverage.csv`
   - Analysis:
      - `ProfilerCTD_RequestsAndAnalysis.ipynb`, subsection titled: *Figure 6 - Storm Profiles*
- **Figure 7**
  - Datasets:
    - CTD Data from the 7 profiler sites: `CP03ISPM_ctd.csv`, `CP02PMUI_ctd.csv`, `CP02PMCI_ctd.csv`, `CP02PMCO_ctd.csv`, `CP01CNPM_ctd.csv`, `CP04OSPM_ctd.csv`, `CP02PMUO_ctd.csv`
   - Analysis:
      - `ProfilerCTD_RequestsAndAnalysis.ipynb`, subsection titled: *Figure 7 - Spatial Variability of 1st Storm*

### Additional Examples for Accessing and Analyzing OOI data

#### `dataAccess.ipynb`
This notebook walks through searching for instrumentation and datasets at the OOI Coastal Endurance sites.

## Copying/Running this repository
#### Local
- Make sure you have Git installed on your machine. For downloads/instructions for Windows/Mac/Linux, check out the [Git website](https://git-scm.com/) and/or the great [tutorial video](https://www.youtube.com/watch?v=wyiiTHVEF8k&feature=youtu.be) by UW eScience.
- In command line, navigate to where you would like the cloned directory, and run the following in your command line:
```bash
git clone https://github.com/fogaren/JGR-EC-methods.git
```
