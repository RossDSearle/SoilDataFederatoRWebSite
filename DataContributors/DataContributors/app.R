library(jsonlite)
library(shiny)


ui <- fluidPage(

  fluidRow(
    column(12,
           tableOutput('tableContributors')
    )
  )
)


server <- function(input, output) {

    output$tableContributors <- renderTable({
      
      ds <- fromJSON(paste0('https://esoil.io/TERNLandscapes/SoilDataFederatoR/R/SoilDataAPI/DataSets'))
      print(ds)
      ds
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
