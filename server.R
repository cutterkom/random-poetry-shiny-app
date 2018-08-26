server <- function(input, output) {
  
  # get generate_random_poem() from global.R and store it as random_poem() 
  # random_poem() is called within renderText
  
  random_poem <- eventReactive(input$update, {
    generate_random_poem(input$poet)
  })
  
  # call random_poem()
  output$text <- renderUI({
  
    HTML(random_poem())
    
  })
  
}