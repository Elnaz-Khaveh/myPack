#' This function returns the test set of the dataframe
#' @param df The dataset which you need its train set
#' @export
#' @return A dataframe
#' @details
#' This function allows the users to get only the test set of the insurance dataframe
#' to use in the other functions' arguments




test <- function(df){
  split_data(factoring(df))$test_set
}
