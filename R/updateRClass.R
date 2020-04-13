#' @name updateRClass
#' @title Pull & build/rebuild package from GitHub
#' @param ref Passed to \code{install_github 'ref'}
#' @param 
#' @importFrom devtools install_github
#' @export

updateRClass <- function(ref = "master") {
  install_github("How-to-Learn-to-Code/rclass", 
                 build_opts = "", 
                 dependencies = TRUE,
                 ref = ref)
}