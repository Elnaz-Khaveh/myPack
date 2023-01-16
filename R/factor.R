#' Easily convert the character columns to factors in medical insurance data
#' @param df A data frame containing medical insurance data.
#' @importFrom dplyr mutate_if
#' @export
#' @return A data frame
#' @details
#' This function allows the user to convert all the columns with type character to factor
#' to be able to use it for prediction, because factors have different levels like numbers, so it
#' is somehow like encoding the categorical variables




factoring <- function(df){

  df <- df |>
    dplyr::mutate_if(is.character,as.factor)
  return(df)

}
