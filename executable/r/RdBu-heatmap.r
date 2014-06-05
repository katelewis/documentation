library(plotly)

p <- plotly(username='test-runner', key='9h29fe3l0x')

size <- 50
z <- matrix(0, size, size)
for(r in 1:size) {
    for(c in 1:size) {
        z[r, c] <- sqrt(r*c/size^2)
    }
}

data <- list(
  list(
    z = z, 
    scl = "RdBu", 
    type = "heatmap"
  )
)
layout <- list(title = "RdBu")

response <- p$plotly(data, kwargs=list(layout=layout, filename="RdBu-heatmap", fileopt="overwrite"))
url <- response$url
filename <- response$filename