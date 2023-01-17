## code to prepare `DATASET` dataset goes here


insurance <- readr::read_csv("https://raw.githubusercontent.com/stedy/Machine-Learning-with-R-datasets/master/insurance.csv")
usethis::use_data(insurance, overwrite = TRUE)
