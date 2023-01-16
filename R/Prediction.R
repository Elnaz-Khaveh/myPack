#' Predict the charges using Random Forest model
#' @param df A data frame containing medical insurance data.
#' @importFrom caret trainControl train
#' @export
#' @return A random forets model summary
#' @details
#' This function allows the users to find the predicted values for charges using the random forest model





predicted <- function(df){
  predict(rf(df), newdata = split_data(factoring(df))$test_set[-7])

}
