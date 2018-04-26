# simple function for calculating mean and SD by hand - note how slow this is compared to using apply, due to the FOR loop


myfunction <- function(x) {

     n <- length(x)                        # set index of loop

         mymean <- sum(x)/n

         mydeltas <- rep (0, n)            # initialise deltas for calculating SD

             for (i in 1:n) {

                 mydeltas[i] <- x[i] - mymean

             }

         mydeltassq <- mydeltas^2

     mysd <- sqrt(sum(mydeltassq)/(n-1))

 return(list(mymean, mysd))

 }

myfunction(rivers)
