

library('shiny')
library('shinydashboard')

ui <- dashboardPage(
  dashboardHeader(title = "MultSampSize"),
  
  dashboardSidebar(
    sidebarMenu(id="tab",
                menuItem("Home", tabName = "home", icon = icon("home")),
                menuItem("Sample size", tabName = "sampsize", icon = icon("calculator"), 
                   menuSubItem("Co-primary", tabName="coprim", icon=icon("sitemap")),
                   menuSubItem("Multiple Primary", tabName = "multprim", icon = icon("arrows-alt")),
                   menuSubItem("Composite", icon=icon("project-diagram"),href="https://github.com/martinamcm/MultSampSize")
                ),
                menuItem("Source code", icon = icon("file-code"),href="https://github.com/martinamcm/MultSampSize")
    )
  ),
  
  dashboardBody(
    useShinyjs(),
    tabItems(
      tabItem(tabName = "home",
              fluidRow(
         
              )),
      
      tabItem(tabName = "multprim",
              fluidRow(
               
                )),
      
      tabItem(tabName="coprim",
              fluidRow(
                
              )),
      
      tabItem(tabName="comp",
              fluidRow(
                
              ))
)
)
)




# Define server logic required to draw a histogram
server <- function(input, output) {
   
  
}

# Run the application 
shinyApp(ui = ui, server = server)

