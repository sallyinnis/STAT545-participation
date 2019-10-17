#September 5th Class 
number=5+2
number *2

(times = c(60,40,33,15,20,55,35))
times/60
(mean(times))
sqrt(times)
range(times)
(times<30)
((times==20))
times!=20
((times>20&times<50))
times < 20 | times > 50
which(times < 30)
(sum(times < 30)) #count the number of travel times < 30
#SUBSETTING
times[3]
times[-3]#extracts everything except the 3rd entry in the database
(times[c(2,4)])#pull two numbers from a vector you need to create another vector, just putting in 2,4 means R is looking at a matrix 
(times[1:5])
(times[times < 30])
((times[times > 50]) <- 50) #doesn't work for me...
(times[times < 50])
times = (times[times <  50])
times [6] = NA
times
mean(times) #cannot calculate with NA, need to remove within mean function with na.rm
?mean #returns info about functions 
mean(times,na.rm = TRUE)
mean(times,0,TRUE) # this works because it is following the order of functions within mean in the info for the mean function
  #name functions unless it is the first one. 

#Dataframes - tabular data 

mtcars #built into r already
(str(mtcars))
(names(mtcars)) # extracting properties of dataframe

#extract vestors using $ sign

mtcars$mpg
mean(mtcars$mpg)
