library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
  dashboardHeader(title = "Data Science Jiu Jitsu"),
  dashboardSidebar( 
    sliderInput("bins","Number of breaks",1,100,50),
    sidebarMenu(
    menuItem("Dashboard", tabName ="dashboard", icon = icon("dashboard")),
    menuSubItem("Dashboard One", tabName = "One"),
    menuSubItem("Dashboard  Two", tabName = "Two"),
    menuSubItem("Dashboard Three", tabName = "Three"),
   menuItem("Data Analysis"),
   menuItem("Raw Data")
  )),
  dashboardBody(
    tabItems(
      tabItem(tabName = "dashboard",
              fluidRow(
                box(plotOutput("histogram"))
                
              )),
              tabItem(tabName = "Menu one",
                      h1("Menu One Dashboard")
                      
                      )),
              tabItem(tabName = "Menu two",
                      h2("Menu two Dashboard")
                      
                      )),
               tabItem(tabName = "Menu Three",
               h2("Menu Three Dashboard")
    )
  )
        
)
  



