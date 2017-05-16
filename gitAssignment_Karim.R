input<-read.csv("C:/HU/Anly 510/Anly510-assignment7-master/dirty_data.csv")
library(stringr)

simpleCap <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2),
        sep="", collapse=" ")
}

input$Street #1
input$Street<-str_replace_all(input$Street, "??", "") #2
input$Street<-str_replace_all(input$Street, "[^[:alnum:]]", " ") #3
input$Street<-tolower(input$Street)#4
input$Street<-sapply(input$Street, simpleCap) #5
input$Street<-str_replace_all(input$Street, "\\bStreet\\b", " str. ") #6
input$Street<-str_replace_all(input$Street, "\\bSt\\b", " str. ")#7
input$Street<-str_replace_all(input$Street, "\\bRoad\\b", "rd.")#8
input$Street<-str_replace_all(input$Street, "\\bRd\\b", "str.")#9
input$Street<-str_replace_all(input$Street, "\\bAvenue\\b", "ave.")#10
input$Street<-str_replace_all(input$Street, "\\bAve\\b", "ave.")#11
input$Street.2<-str_replace_all(input$Street, "\\bLane\\b", "ln.")#12
input$Street.2<-str_replace_all(input$Street, "\\bLn\\b", "ln.")#13
input$Street<-str_replace_all(input$Street, "\\s+", " ")#14
input$Street<-str_trim(input$Street, side = c("both")) #15

input$Street.2 #1
input$Street.2<-str_replace_all(input$Street.2, "??", "") #2
input$Street.2<-str_replace_all(input$Street.2, "[^[:alnum:]]", " ") #3
input$Street.2<-tolower(input$Street.2)#4
input$Street.2<-sapply(input$Street.2, simpleCap) #5
input$Street.2<-str_replace_all(input$Street.2, "\\bStreet\\b", " str. ") #6
input$Street.2<-str_replace_all(input$Street.2, "\\bSt\\b", " str. ")#7
input$Street.2<-str_replace_all(input$Street.2, "\\bRoad\\b", "rd.")#8
input$Street.2<-str_replace_all(input$Street.2, "\\bRd\\b", "str.")#9
input$Street.2<-str_replace_all(input$Street.2, "\\bAvenue\\b", "ave.")#10
input$Street.2<-str_replace_all(input$Street.2, "\\bAve\\b", "ave.")#11
input$Street.2<-str_replace_all(input$Street.2, "\\bLane\\b", "ln.")#12
input$Street.2<-str_replace_all(input$Street.2, "\\bLn\\b", "ln.")#13
input$Street.2<-str_replace_all(input$Street.2, "\\s+", " ")#14
input$Street.2<-str_trim(input$Street.2, side = c("both")) #15

input$Street.2[2]<- paste(input$Street.2[2], "test", sep=" ")

input$Street.2 <- replace(input$Street.2, which(input$Street.2 == input$Street), NA)
getwd()    
write.csv(input, file = "input.csv")  



