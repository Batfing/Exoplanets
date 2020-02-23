library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title 1988-2020
    titlePanel("Confirmed exoplanets each year as of 23.02.2020"),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 2020 - 1988 + 1,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

