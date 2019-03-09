#begin function initialization
NPV <- function(outlay,pmt,scrap=NA,t,rate,words=F){
  #outlay = investment cost
  #pmt = cash flow payment per period
  #scrap = (optional) salvage value of investment
  #t = time horizon length
  #rate = discount rate
  #words = logical argument indicating a printout with text and accounting notation
  d <- matrix(NA,nrow=t+1,ncol=1)
    for (i in 1:(t+1)){
      #take the rate and compute the discounting factor for each period
      d[i] <- 1/(1+rate)^(i-1)
    } 
  #capital investment + salvage value payback
  CISV <- as.matrix(c(c(-outlay,rep(0,t-1)),ifelse(is.na(scrap),0,scrap)))
  #average of future cash flow payments (generally constant anyway)
  AVG <- as.matrix(c(c(0,rep(pmt,t))))
  #net present value = SUM(present values of cash flow payments) - cash outlay
  NPV <- sum((CISV+AVG)*d)
  #by default, the text description with accounting notation is turned off
  return(ifelse(words==T,
                paste0("Net Present Value (NPV) = $",
                       ifelse(NPV>0,round(NPV,2),
                              paste0(gsub("-","(",round(NPV,2)),")"))),
                round(NPV,2)))
}
#Example: $25,000 investment pays $1,500/yr, salvaged at $2,500 at the end
#of its 30 year useful lifespan assuming a discount rate of 4.5% (no text)
NPV(outlay = 25000,pmt = 1500,scrap = 2500,t = 30,rate = 0.045)
#Similar example, but with a 4.55% discount rate and descriptive text included
NPV(outlay = 25000,pmt = 1500,scrap = 2500,t = 30,rate = 0.0455,words=T)
