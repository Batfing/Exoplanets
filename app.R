#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(readr)

exoplanet_eu_catalog <- read_csv("data/exoplanet.eu_catalog.csv")
View(exoplanet_eu_catalog)

source("server.R")
source("ui.R")

# Run the application 
shinyApp(ui = ui, server = server)
