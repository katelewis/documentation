library(plotly)

p <- plotly(username='test-runner', key='9h29fe3l0x')

data <- list(
  list(
    x = c(0, 1, 2), 
    y = c(6, 10, 2), 
    error_y = list(
      array = c(1, 2, 3), 
      type = "data", 
      visible = TRUE
    ), 
    type = "scatter"
  )
)

response <- p$plotly(data, kwargs=list(filename="basic-error-bar", fileopt="overwrite"))
url <- response$url
filename <- response$filename