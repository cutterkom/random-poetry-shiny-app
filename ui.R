library(shinythemes)
library(markdown)

fluidPage(theme = shinytheme("flatly"),
  
  titlePanel("Generate a Random Poem with Markov Chain"),
  
  fluidRow(
    column(3,
           selectInput("poet", 
                       label = "Choose a poet:",
                       choices = poets),
           actionButton("update", "Generate a Random Poem")
    ),
    column(3,
           h3(paste0("Your random poem:")),
           h4(htmlOutput("text"))
    ),
    column(2),
    column(4,
     includeMarkdown("readme.md")
    )
  )
)



