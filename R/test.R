#' This function returns the test set of the dataframe
#' @param df The dataset which you need its train set
#' @export
#' @return A dataframe
#' @details
#' This function allows the users to get only the test set of the insurance dataframe
#' to use in the other functions' arguments.Since there is another function called "test"
#' in the "caret" library so always use myPack::test(df)




test <- function(df){
  split_data(factoring(df))$test_set
}
