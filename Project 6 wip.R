myDF <- read.csv("/class/datamine/data/8451/The_Complete_Journey_2_Master/5000_transactions.csv")

#displays the data frame
head(myDF)

#splits the results
myresults <- split(myDF,myDF$STORE_R)

# class of the results 
class(myresults)

# shows the length of the results
length(myresults)

# shows the name of the results 
names(myresults)

# shows the dimensions of the results 
dim(myresults[["CENTRAL"]])
    
#displays the results
head(myresults[["CENTRAL"]])

#importing new file 
myproducts <- read.csv("/class/datamine/data/8451/The_Complete_Journey_2_Master/5000_products.csv")

#displays the new file
head(myproducts)

#merges the different data frames
mybigDF <-merge(myDF,myproducts,by="PRODUCT_NUM")

#displays the results
head(mybigDF)

# displays the subset of the data frame about the purchases made on 23 December 2017
subset(myDF,myDF$PURCHASE_=="23-DEC-17")

#displays the subset of the data frame about the dollar amounts of the purchases on 23 December 2017
subset(myDF,myDF$PURCHASE_=="23-DEC-17",SPEND)

#displays the subset of the data frame about the dates and dollar amounts of the purchases on 23 December 2017
subset(myDF,myDF$PURCHASE_=="23-DEC-17",select=c(SPEND,STORE_R))

#displyas the subset of the data frame about the dates,dollar amounts and stores of the purchases on 23 December 2017
subset(myDF,myDF$PURCHASE_=="23-DEC-17",select=c(SPEND,STORE_R,PURCHASE_))

#assigning the required data to new table
xyz <-  subset(myDF,myDF$PURCHASE_=="23-DEC-17",select=c(SPEND,STORE_R))

#sorts the last value 
tail(sort(tapply(xyz$SPEND,xyz$STORE_R,sum)),1)

