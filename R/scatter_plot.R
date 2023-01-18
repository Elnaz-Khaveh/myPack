#' Plot the scatter plot
#' @param df A data frame containing medical insurance data.
#' @param col_of_interest_numeric A numeric column for the x axis, the y axis is the target variable(It must be given with quotes)
#' @param col_of_interest_factor A data frame containing medical insurance data.(It must be given with quotes)
#' @importFrom GGally ggcorr
#' @importFrom ggplot2 ggplot geom_point theme labs
#' @importFrom dplyr mutate_if
#' @export
#' @return A scatter plot
#' @details
#' This function lets the user to have a scatter plot between 2 numeric variables(one is the target variable called charges and one taken from the user)
#' and fill with 1 categorical variable(taken from the user)




scatter_plot <- function(df, col_of_interest_numeric, col_of_interest_factor){

  if(!(is.numeric(df[[{{col_of_interest_numeric}}]]))) {
      stop("The input for the second argument of this function should be numeric")
    }
  if(is.numeric(df[[{{col_of_interest_factor}}]])) {
    stop("The input for the third argument of this function should not be numeric")
    }

    df |>
      ggplot2::ggplot(ggplot2::aes(x=eval(parse(text={{col_of_interest_numeric}})), y=charges, color=eval(parse(text={{col_of_interest_factor}})))) +
      ggplot2::geom_point(size=2)+
      ggplot2::theme(legend.position = "top")+
      ggplot2::labs(x = "age", colour = "sex")

}
