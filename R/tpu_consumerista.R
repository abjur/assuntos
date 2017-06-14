#' Downloads consumerist issues's TPU
#'
#' @param regex_consumerista string or regex containing the content to match with the legals subjects in the TPU.
#'
#' @export
download_tpu_consumerista <- function(regex_law = " ([Ll]ei )?8\\.?078((/90)| |$)|CDC|[Cc]ódigo (de )?[Dd]efesa (do )?[Cc]onsumidor| ([Ll]ei )?7\\.?347((/85)| |$)"){

  tpur::download_table("assunto","estadual","primeiro grau") %>%
  tpur::build_table() %>%
  dplyr::filter(
    str_detect(dispositivo_law, regex_consumerista)|
    #or
    str_detect(n1, "DIREITO DO CONSUMIDOR"))

}
