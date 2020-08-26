#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
middhinge <- function(x, na_rm = FALSE) {
  q1 <- x %>% pull(TotalPay) %>%
    quantile(.0)
  q1 <- as.vector(q1)
  q3 <- x %>% pull(TotalPay) %>% 
    quantile(c(.75))
  q3 <- as.vector(q3)
  mid <- (q1 + q3)/2
  return(mid)
}

