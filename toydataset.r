#Create toydataset
toydataset <- tibble::tribble(~HasDiabetes, ~`Preg`, ~`BP`,  ~`PregNorm`, ~`BPNorm`,
                       "No" ,  2     ,  74     , 0     , 1.292, 
                       "Yes" ,  3     ,  58     , 1.414     , -0.554, 
                       "Yes" ,  2     ,  58     , 0     , -0.554, 
                       "No" ,  1     ,  54     , -1.414     , -1.015, 
                       "No" ,  2     ,  70     , 0     , 0.830)
toydataset

toydataset %>%  dist(Preg, BP)
#Nearest neighbor search
nearest <- toydataset(Preg[,1:2], graph_coords, k = 1)
closest <- sapply(closest, cbind) %>% as_tibble


sqrt(sum((Preg.Norm - BP.Norm)^2))
PN <- c(0, 1.414, 0, -1.414, 0)
BPN <- c(1.292, -0.554, -0.554, -1.015, 0.830)
sqrt(sum((PN - BPN)^2))

dat$Dates <- lubridate::ymd(dat$Dates)