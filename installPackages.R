# simple script to install useful packages not in base
# call with --installDatasets to do so

usefulPackages <- c(
              "ggplot2" # graphics
              ,"reshape2" # melting and casting
              ,"useful" # utils from Jared Lander, e.g. dataframe corners and formatting
              ,"coefplot" # plot model coefficients
              ,"plyr" # split/apply/combine data
              ,"dplyr" # data manipulation, e.g. filter, rename
              ,"GGally" # e.g. for ggpairs, correlation matrix plotting
              ,"data.table" # data.frames with indices for speed
              ,"lubridate" # simplified date management
              ,"scales" # formatting/scaling for strings/plots
              ,"boot" # bootstrapping. includes cv.glm (cross-val)
              ,"glmnet" # Elastic net regularization
              ,"doParallel" # foreach adapter for parallel package
              ,"stringr" # consistent string manipulation
              ,"arm" # regression, multi-level & hierarchical models
                     # e.g. bayesglm to add priors
              ,"mgcv" # generalized additive models (GAMs) 
              ,"rpart" # decision trees
              ,"randomForest" # (obvious)
              ,"tidyverse" # lots of data science stuffs
              ,"forecast" # time series functions
              ,"vars" # vector autoregressive (VAR) model
                      # fits model to multiple time series
              ,"quantmod" # finance stuff, can pull market data
              ,"xts" # better time series objects
              ,"rugarch" # GARCH modeling (high-volatility time series)
              ,"cluster" # various clustering stuff, incl. clusGap and PAM
              ,"fastcluster" # faster hclust
              ,"knitr" # R code and LaTeX/Markdown
              ,"RcppRoll" # rolling aggregates
              ,"ggstance" # horizontal ggplot2
              ,"lvplot" # letter value box plots
              ,"ggbeeswarm" # beeswarm plots
              ,"hexbin" # analog of geom_bin2d, prettier
              ,"feather" # language-agnostic data storage
              ,"jsonlite" # JSON 
              ,"xml2" # XML
              )

install.packages(usefulPackages)

# Other useful packages which are included in base
# splines - for basis splines (see ns())

args = commandArgs(trailingOnly=T)
if(length(args) > 0 && args[1] == "--installDatasets")
{
    dataSetPackages <- c(
              ,"UsingR" # various datasets
              ,"WDI" # World Bank API
              ,"nycflights13" # flights that departed NYC in 2013
              )

    install.packages(dataSetPackages)
}
