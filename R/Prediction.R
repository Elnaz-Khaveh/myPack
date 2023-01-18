#' Predict the charges using Random Forest model
#' @param train The train set after spiliting the insurance data
#' @param test The test set after spiliting the insurance data
#' @importFrom caret trainControl train
#' @export
#' @return A random forets model summary
#' @details
#' This function allows the users to find the predicted values for charges using
#' the random forest model Note that instead if the arguments of this function
#' you can use train(insurance) and test(insurance).




predicted <- function(train,test){
  predict(rf(train), newdata = test[-7])

}
