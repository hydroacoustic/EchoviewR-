EVGetTransducers <- function(EVFile){
  #number of variables in EV FIles
  nvar = EVFile[['Transducers']]$Count()
  #create list of variables
  vars = apply(matrix(1:nvar),1,
               FUN=function(x){EVFile[['Transducers']]$Item(x-1)$Name()})
  
  if(length(vars) > 0){
    msgV = paste0(Sys.time(),": Success ", nvar, " transducers detected")
  }else{
    msgV = paste0(Sys.time(),": Error - No transducers detected")
  }
  message(msgV)
  
  return(list(variables=vars,msg=msgV))
}
