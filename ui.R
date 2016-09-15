shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("A Ballot box"),
        sidebarPanel(
            numericInput('choices','How many choices do you have?',value = 6),
            numericInput('choosed','How many choices you need to choose?',value = 1),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Results of the ballot box'),
            h4('The number of choices you have(6 is default)'),
            verbatimTextOutput("choices"),
            h4('The number you choosed(1 is default)'),
            verbatimTextOutput("choosed"),
            h4('The results'),
            verbatimTextOutput("result"),
            h4('Your result is choosed from'),
            verbatimTextOutput("totalchoices"),
            h4('possibilities')
        )
    )
)
