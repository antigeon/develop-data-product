library(shiny)

makechoicee<-function(m,n,rep)   {
    if(rep=="TRUE")
        sample(1:m,n,replace=TRUE)
    else
        sample(1:m,n,replace=FALSE)

    }



shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$glucose})
        m<-reactive(input$choices)
        output$choices<-renderPrint(input$choices)
        output$choosed<-renderPrint({input$choosed})
        output$result<-renderPrint({makechoicee(input$choices,input$choosed,input$replacement)})
        output$test<-renderPrint({class(input$replacement)})
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
