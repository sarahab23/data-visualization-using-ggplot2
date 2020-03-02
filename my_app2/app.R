    #
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins 
    sliderInput(inputId = "num","Select a random number",
                min = 2,max = 35,value=10),
    plotOutput(outputId = "hist")
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$hist <- renderPlot({hist(rnorm(input$num))})
}

# Run the application 
shinyApp(ui = ui, server = server)
