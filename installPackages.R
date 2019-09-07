# simple script to install useful packages not in base

packages <- c(
              "ggplot2", # graphics
              "reshape2", # melting and casting
              "useful", # utils from Jared Lander, e.g. dataframe corners and formatting
              "coefplot", # plot model coefficients
              "UsingR", # various datasets
              "plyr", # split/apply/combine data
              "dplyr", # data manipulation, e.g. filter, rename
              "GGally", # e.g. for ggpairs, correlation matrix plotting
              "data.table", # data.frames with indices for speed
              "lubridate", # simplified date management
              "scales" # formatting/scaling for strings/plots
              )

install.packages(packages)
