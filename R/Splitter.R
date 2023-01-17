#' Split the dataframe to train and test
#' @param df A data frame containing medical insurance data.
#' @importFrom rsample initial_split training testing
#' @importFrom hash hash
#' @export
#' @return A dataframe of 2 columns train and test
#' @details
#' This function allows the users to have split of the dataframe
#' to train set and test set for machine learning tasks





split_data <- function(df){

  set.seed(123)

  split <- rsample::initial_split(data = df, prop = 0.80, strata = charges)

  train_set <- rsample::training(split)

  test_set <- rsample::testing(split)

  h <- hash::hash()

  h[["train_set"]] <- train_set

  h[["test_set"]] <- test_set

  return(h)

}
