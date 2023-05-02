#pima-indians-diabetes-resampled
pidr <- read_csv("pima-indians-diabetes-resampled.csv")
class(pidr)
#"spec_tbl_df" "tbl_df"      "tbl"         "data.frame"
testfeatures <- pidr[testindex, 1:4]
testfeatures
#“Preg Glucose    BP  Skin”
#Class Variable: Hasdiabetes
#Feature Variable(s): Preg, Pedigree

#The dataset is split into train and test datasets with the first 500 rows for training, and the remaining rows for test
trainindex <- 1:500
trainfeatures <- ind[trainindex, 1:4]
trainlabels <- ind[trainindex, 9]
testindex <- 501:768
testfeatures <- ind[testindex, 1:7]
testlabels <- ind[testindex, 9]
predicted <- knn(train=trainfeatures, test=testfeatures, cl=trainlabels$HasDiabetes, k=1)
cbind(testlabels, predicted)
select(-HasDiabetestable(testlabels$HasDiabetes, predicted)

#The dataset is NOT randomly sampled
#Train and test for 1-nearest neighbor (1-NN) classifier with this dataset
#The error rate (number of misclassifications) is
(58+53)/268