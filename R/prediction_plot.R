#' Plot the predicted values vs. the actual values
#' @param df A data frame containing medical insurance data.
#' @param model The model that is used to visualize the prediction plot
#' @export
#' @return A plot
#' @details
#' This function allows the users to plot the actual values vs. the predicted values



pred_plot <- function(df,model = rf){

  plot(predicted(factoring(df),model),
       (split_data(factoring(df))$test_set)$charges,
       xlab = "RF Predicted Values",
       ylab = "Observed Values")
  abline(a = 0,
         b = 1,
         col = "red",
         lwd = 2)



}
