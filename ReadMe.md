ReadMe :

 run_analysis.R calculates means per activity, per subject of the mean and Standard deviation of the Human Activity Recognition Using Smartphones Dataset Version 1.0 [1]. This dataset should be downloaded and extracted directly into the data directory.

Once executed, the resulting dataset maybe found at ./coursera R/data prep/tidydata.txt

For futher details, refer to CodeBook.md

References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 activityrecognition@smartlab.ws

Required R Packages

The R package reshape2 is required to run this script. This maybe installed with,

install.package("reshape2")