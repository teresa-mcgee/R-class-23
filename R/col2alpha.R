##----------------------------------------------------------------------------##
## col2alpha: convert color to transparent color
##----------------------------------------------------------------------------##

#' @name col2alpha
#' @title Convert color to transparent color
#' 
#' @param col Character, the color 
#' @param alpha Length 1 numeric, 0 to 1 (the transparency level)
#' 
#' @importFrom grDevices col2rgb rgb
#' @export 

col2alpha <- function(col, alpha = 0.5) {
  tmp <- col2rgb(col)
  rgb(tmp[1]/255, tmp[2]/255, tmp[3]/255, alpha)  
}