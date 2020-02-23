library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title 1988-2020
    titlePanel("Discovered/confirmed exoplanets each year with discovery methos as of 23.02.2020 Data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = thisStudyYear - firstDiscovery + 1,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
)

