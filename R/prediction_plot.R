#' Plot the predicted values vs. the actual values
#' @param pred The predicted values using random forest
#' @param test The test set after spiliting the insurance dataset
#' @export
#' @return A plot
#' @details
#' This function allows the users to plot the actual values vs. the predicted
#' values. Note that as the first argument you can use
#' predicted(train(insurance),test(insurance)), and as the second argument you can use
#' test(insurance)




pred_plot <- function(pred,test){

  plot(pred,
       test$charges,
       xlab = "RF Predicted Values",
       ylab = "Observed Values")
  abline(a = 0,
         b = 1,
         col = "red",
         lwd = 2)



}
