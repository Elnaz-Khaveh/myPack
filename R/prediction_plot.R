#' Plot the predicted values vs. the actual values
#' @param pred The predicted values using random forest
#' @param test The test set after spiliting the insurance dataset
#' @importFrom ggplot2 ggplot geom_point geom_abline labs
#' @export
#' @return A plot
#' @details
#' This function allows the users to plot the actual values vs. the predicted
#' values. Note that as the first argument you can use
#' predicted(train(insurance),test(insurance)), and as the second argument you can use
#' test(insurance)




pred_plot <- function(pred,test){

    df <- data.frame(pred,test$charges)
    ggplot2::ggplot(df, aes(x = pred,y = test.charges)) +
    ggplot2::geom_point() +
    ggplot2::geom_abline(intercept = 0,
                  slope = 1,
                  color = "red",
                  linewidth = 1)+
    ggplot2::labs(x = "RF predicted", y = "Actual")

}


