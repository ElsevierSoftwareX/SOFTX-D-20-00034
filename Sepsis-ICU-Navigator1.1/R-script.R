ChangePoint <- function(data,num){
  test1.1 <- onlineCPD(data,getR=TRUE, optionalOutputs = TRUE, 
                       missPts = "mean", cpthreshold = num,
                       hazard_func=function(x, lambda){const_hazard(x, lambda=100)})
  # plot the results, the R matrix will be visible
  result <-test1.1$changepoint_lists$threshcps[[1]]
  return(result)
}
