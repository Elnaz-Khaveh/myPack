# myPack
## A package to predict the health insurance costs

This is a package for the insurance cost prediction done by Random Forest. Also it allows users to do some Explanatory Data Analysis 
before training the model such as visualizing some different columns. The dataset used to develope this package is the "insurance" from [Kaggle](https://www.kaggle.com/datasets/mirichoi0218/insurance?resource=download),
but it is originally for the book “Machine Learning with R” by Brett Lantz.(link){https://github.com/stedy/Machine-Learning-with-R-datasets}


In order to be able to use this package, open a project in R, then run the following commands in console:

```
install.packages("devtools")
library(devtools)
devtools::install_github("Elnaz-Khaveh/myPack")
```

To see the documentation of the package run:

```
help(package = "myPack")
```

And to check what each function does run:

```
?name_of_the_function
```

For example:

```
?corr_heatmap
```
