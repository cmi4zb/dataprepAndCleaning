## import training files

setwd("~/coursera R/data prep/course project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train")
train1<- read.table("X_train.txt")
train2<- read.table("y_train.txt", sep="\t",header = F)
train3<- read.table("subject_train.txt", sep="\t",header = F)

#import testing files 

setwd("~/coursera R/data prep/course project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test")
test1<- read.table("X_test.txt")
test2<- read.table("y_test.txt", sep="\t",header = F)
test3<- read.table("subject_test.txt", sep="\t",header = F)

## import features and activity files 

setwd("~/coursera R/data prep/course project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")
features <- read.table("./features.txt")
activity.labels <- read.table("./activity_labels.txt")


#combine rows for x,y, and subject 
x<-rbind(train1,test1)
colnames(x) <- features[, 2] #combine x values and feature names, change column names 

y<-rbind(train2,test2)
y <- merge(y, activity.labels, by=1)[,2] #merge on y values to get activity labels

subject<-rbind(train3,test3)
colnames(subject)<-(c("subject")) #change name to subject 
  
data<-cbind(x,y,subject) # combine row binded data to have one data set 
datavalue<- data[grep("mean|std",names(data))] # only grab columns, and the values of those columns which contain "mean" or 'std" in the name 
datavalue<-cbind(datavalue,data[c(562,563)]) # combine theans means and std dev with the "y" and "subject" column from the original data set 


install.packages("reshape2")
library(reshape2)

#melt data set, clarify that id's are y and subject 
melty<-melt(datavalue,id=c("y","subject"))

#get the mean of the means and std devs by groups of y and subject 
extramelty<-dcast(melty,y+subject ~ variable,mean)

#write tidy data set file 
setwd("~/coursera R/data prep/course project") 
write.table(extramelty,"tidydata.txt") # write file for cleaned data set 
