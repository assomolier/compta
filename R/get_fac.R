url <- "https://docs.google.com/spreadsheets/d/1D9RyHDTfuHyigDFte0CFyVE4r3B0NJfu_Zi2vFCnKmA/edit#gid=0"

#' Get factures
#'
#' @importFrom googlesheets4 read_sheet
#' @export

get_fac <- function() {
  read_sheet(url)
}

#' Generate new facture id
#'
#' @param df sheet from google sheet
#' @importFrom lubridate year
#' @importFrom stringr str_pad
#' @export
new_fac_num <- function(df){
  sprintf(
    "%s%s",
    lubridate::year(Sys.Date()),
    str_pad(
      nrow(df) + 1,
      5,
      pad = "0"
    )
  )
}

#' RIB
#'
#' @export
get_rib <- function(){
  read_sheet(url, sheet = 2)
}
