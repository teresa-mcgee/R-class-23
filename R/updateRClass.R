#' @name updateRClass
#' @title Pull & build/rebuild package from GitHub
#' @param ref Passed to \code{install_github 'ref'}
#' @importFrom devtools install_github
#' @export

updateRClass <- function(ref = "master") {
  install_github("teresa-mcgee/R-class-23", 
                 build_opts = "",
                 dependencies = TRUE,
                 ref = ref,
                 force = TRUE)
}