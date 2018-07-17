##----------------------------------------------------------------------------##
## line2user: convert the line location to user coordinates
##----------------------------------------------------------------------------##

#' @name line2user
#' @title Convert the line location to user coordinates
#' 
#' @param line Integer, the line 
#' @param side Integer, the side
#' 
#' @export 

line2user <- function(line, side, outer = FALSE) {
  unit <- if (outer) "nic" else "npc"
  lh <- par('cin')[2] * par('cex') * par('lheight')
  x_off <- diff(grconvertX(c(0, lh), 'inches', unit))
  y_off <- diff(grconvertY(c(0, lh), 'inches', unit))
  switch(side,
         `1` = grconvertY(-line * y_off, unit, 'user'),
         `2` = grconvertX(-line * x_off, unit, 'user'),
         `3` = grconvertY(1 + line * y_off, unit, 'user'),
         `4` = grconvertX(1 + line * x_off, unit, 'user'),
         stop("Side must be 1, 2, 3, or 4", call.=FALSE))
}

