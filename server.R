library(shiny)

makechoicee<-function(m,n,replacement)    sample(1:m,n)



shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$glucose})
        m<-reactive(input$choices)#
        output$choices<-renderPrint(input$choices)
        output$choosed<-renderPrint({input$choosed})
        output$result<-renderPrint({makechoicee(input$choices,input$choosed)})
        output$totalchoices <- renderPrint({choose(input$choices,input$choosed)})
    }
)






#shinyServer(
#    function(input, output) {
#
#        output$choices <- renderText({input$choices})
#        output$choosed <- renderText({input$choosed})#

#        m<-reactive(input$choices)#

        #choosed<-as.numeric(input$choosed)
 #       output$text3 <- renderPrint({m})
  #      output$text4 <- renderText(y)
   #     output$text5 <- renderText(x)
   # }
#)
