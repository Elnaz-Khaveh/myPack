#' Plot the scatter plot
#' @param df A data frame containing medical insurance data.
#' @param col_of_interest_numeric A numeric column for the x axis, the y axis is the target variable
#' @param col_of_interest_factor A data frame containing medical insurance data.
#' @importFrom GGally ggcorr
#' @importFrom dplyr mutate_if
#' @export
#' @return A scatter plot
#' @details
#' This function lets the user to have a scatter plot between 2 numeric variables(one is the target variable called charges and one taken from the user)
#' and fill with 1 categorical variable(taken from the user)




scatter_plot <- function(df, col_of_interest_numeric, col_of_interest_factor){

  df |>
    ggplot(aes(x={{col_of_interest_numeric}}, y=charges, color={{col_of_interest_factor}})) +
    geom_point(size=2)+
    theme(legend.position = "top")

}
