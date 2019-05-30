##----------------------------------------------------------------------------##
## labelLines: label the line positions on a plot
##----------------------------------------------------------------------------##

#' @name labelLines
#' @title Label the line positions on a plot
#' 
#' @param outer Logical of length 1, should the outer lines be drawn? 
#' @param alpha Length 1 numeric, 0 to 1 (the transparency level)
#' 
#' @export 

labelLines <- function(outer = FALSE, alpha = 1) {
  if (outer) {
    col <- col2alpha("darkgreen", alpha)
    p <- "oma"
  } else {
    col <- col2alpha("darkred", alpha)
    p <- "mar"
  }
  nline <- par()[[p]]
  side <- unlist(mapply(rep, 1:4, each = nline))
  line <- unlist(sapply(nline, seq)) - 1
  txt <- paste0("Line", line)
  mtext(txt, side, line, outer = outer, col = col)
  mtext(paste0("Side", 1:4), 1:4, -1, col = col2alpha("gray40", alpha))
  xpd <- if (outer) NA else TRUE
  abline(h = line2user(0:nline[1], 1, outer), xpd = xpd, lty = 3, col = col)
  abline(v = line2user(0:nline[2], 2, outer), xpd = xpd, lty = 3, col = col)
  abline(h = line2user(0:nline[3], 3, outer), xpd = xpd, lty = 3, col = col)
  abline(v = line2user(0:nline[4], 4, outer), xpd = xpd, lty = 3, col = col)
}