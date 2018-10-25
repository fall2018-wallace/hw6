
clean_data <- function() 
{
    dfStates<- read.csv("scprc_est_2017_18_pop_res.csv")
    dfStates <- dfStates[-1,]
    dfStates <- dfStates[-52,]
    dfStates <- dfStates[-9,]
    dfStates <- dfStates[,-1:-4]
    colnames(dfStates) <- c("stateName","population","popOver18","percentOver18")
    return(dfStates)
}
clean_data<-clean_data()
clean_data
