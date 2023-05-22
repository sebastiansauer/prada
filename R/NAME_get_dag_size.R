#' Get the size of a DAG
#'
#' Returns the number of variables in a directed acyclic graph (DAG)
#'
#' @param dag, a DAG object from `dagitty`
#'
#' @return dag size (integer)
#' @export
#'
#'
#' @examples
#'
#' get_dag_size(my_dag)
#'
get_dag_size <- function(dag){
  stringr::str_extract_all(dag, pattern = "\\d") %>% unlist() %>% max()
}