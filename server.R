library(shiny)

# Define server logic required to draw a histogram
# discovered
server <- function(input, output) {
    
    
    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- exoplanet_eu_catalog$discovered
        bins <- seq(min(x,na.rm=TRUE), max(x,na.rm=TRUE), length.out = input$bins + 1)
        

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white',
             main='Histogram of discovered Exoplanets',
             xlab='Year of Discovery')
    })
}

