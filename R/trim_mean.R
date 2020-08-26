#' Takes a noun and makes it plural
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export
trimmean <- function(x, y) {
  count_vec <- NROW(x)
  trim <- (y * count_vec)
  trim_front <- head(x, -trim)
  trim_back <- tail(x, -NROW(trim_front))
  trim_mean <- mean(trim_back)
  return(trim_mean)
}






