#' Train a random forest model on charges
#' @param df A data frame containing medical insurance data.
#' @importFrom caret trainControl train
#' @importFrom randomForest randomForest
#' @export
#' @return A random forets model summary
#' @details
#' This function allows the users to train a random forest model on medical insurance
#'  dataframe to predict how much charges the insurance company should pay




rf <- function(df){

  trainCon <- caret::trainControl(method = "cv", number = 5)
  model <- caret::train(charges ~., data = split_data(factoring(df))$train_set, method = "rf", trControl = trainCon)
  return(model)
}
