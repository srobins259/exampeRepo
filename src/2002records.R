n <- 0

readinteger()


readinteger <- function()
{ 
  n <- readline(prompt="Enter a year: ")
  checkYear(as.integer(n))
}

checkYear <- function(n){
  if(nrow(fyd[fyd$year == n,]) > 0){
    print(c("There are records from ", n))
  }else{
    print(c("There are no records from ", n))
  }
}
