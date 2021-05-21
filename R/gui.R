#' Graphical user interface for sample size estimation with mixed outcome composite endpoints
#'
#' \code{gui()} runs an R Shiny web browser based graphical user interface for
#' \code{\link{multsampsize}}. For details of Shiny app functionality, 
#' see \href{https://github.com/martinamcm/MultSampSize}{MultSampSize}
#' @examples
#' # Launch the graphical user interface
#' \dontrun{gui()}
#' @export
gui <- function() {
  app_dir <- system.file("shiny", "MultSampSize", package = "multsampsize")
  if (app_dir == "") {
    stop("Could not find required directory for Shiny graphical user ",
         "interface. Try re-installing multsampsize.")
  }
  shiny::runApp(app_dir, launch.browser = TRUE, display.mode = "normal")
}