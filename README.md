# ML_term_paper


## The folder *Code* contains all code to reproduce our results in the paper 

- **1_import PUFsin stata.do** is the official file from OECD to import all single country CSV Public Use Files into one STATA dataset (*PIAAC_allcountries.dta*). You can find the data and the do file [here](http://www.oecd.org/skills/piaac/data/)
- **2_prepare_data** takes *PIAAC_allcountries.dta* produces the reduced data set *piaac_red.csv* that we use for all further analysis
- **3_descriptives** produces all summary tables and graphs for the descriptive chapter 
- **4_1_logit_model** contains the Lasso logit model (*Warning*: if you run the kernel again, the liblinear solver will produce slightly different results even if we set seed. More information can be found [here](https://stackoverflow.com/questions/24424440/sklearn-linear-model-logisticregression-returns-different-coefficients-every-tim)
- **4_2_linear_model** contains the Lasso linear model

## All code assumes the following folder structure

```bash
. 
├── Code
├── Data
├── Paper
└── Results 
        └── Plots
```         
        
