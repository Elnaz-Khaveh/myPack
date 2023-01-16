#' Plot the correlation heatmap
#' @param df A data frame containing medical insurance data.
#' @importFrom GGally ggcorr
#' @importFrom dplyr mutate_if
#' @export
#' @return A correlation heatmap plot
#' @details
#' This function allows the user to plot a correlation heatmap to see the correlations
#' among the variables of the insurance dataframe




corr_heatmap <- function(df){

     GGally::ggcorr(factoring(df) |> mutate_if(is.factor, as.numeric), label = TRUE)

}
