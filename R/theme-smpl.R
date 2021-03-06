#' Simple theme for highcharts
#' 
#' Desing inspired by \url{https://github.com/hrbrmstr/hrbrmisc/blob/master/R/ggplot.r}
#' and color by \url{https://www.materialui.co/flatuicolors}
#' 
#' @param ... Named argument to modify the theme
#' 
#' @examples 
#' 
#' highcharts_demo() %>% 
#'   hc_add_theme(hc_theme_smpl())
#' 
#' @export
hc_theme_smpl <- function(...){
  
  theme <-
    hc_theme(
      colors = c("#d35400", "#2980b9", "#2ecc71",
                 "#f1c40f", "#2c3e50", "#7f8c8d"),
      chart = list(
        style = list(
          fontFamily = "Roboto"
        )
      ),
      title = list(
        align = "left",
        style = list(
          fontFamily = "Roboto Condensed",
          fontWeight = "bold"
        )
      ),
      subtitle = list(
        align = "left",
        style = list(
          fontFamily = "Roboto Condensed"
        )
      ),
      legend = list(
        align = "right",
        verticalAlign = "bottom"
      ),
      xAxis = list(
        gridLineWidth = 1,
        gridLineColor = "#F3F3F3",
        lineColor = "#F3F3F3",
        minorGridLineColor = "#F3F3F3",
        tickColor = "#F3F3F3",
        tickWidth = 1
      ),
      yAxis = list(
        gridLineColor = "#F3F3F3",
        lineColor = "#F3F3F3",
        minorGridLineColor = "#F3F3F3",
        tickColor = "#F3F3F3",
        tickWidth = 1
      ),
      plotOptions = list(
        line = list(
          marker = list(enabled = FALSE),
          states = list(hover = list(lineWidthPlus = 1))
        ),
        spline = list(
          marker = list(enabled = FALSE),
          states = list(hover = list(lineWidthPlus = 1))
        ),
        area = list(
          marker = list(enabled = FALSE),
          states = list(hover = list(lineWidthPlus = 1))
        ),
        areaspline = list(
          marker = list(enabled = FALSE),
          states = list(hover = list(lineWidthPlus = 1))
        )
      )
    )

  theme <- structure(theme, class = "hc_theme")
  
  if (length(list(...)) > 0) {
    theme <- hc_theme_merge(
      theme,
      hc_theme(...)
    )
  } 
  
  theme
  
}
