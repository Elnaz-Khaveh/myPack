#' This function returns the train set of the dataframe
#' @param df The dataset which you need its train set
#' @export
#' @return A dataframe
#' @details
#' This function allows the users to get only the train set of the insurance dataframe
#' to use in the other functions' arguments




train <- function(df){
  split_data(factoring(df))$train_set
}
