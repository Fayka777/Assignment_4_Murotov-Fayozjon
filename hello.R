
####################################################################################



data_table_1 <- data.table(ID = 1:10, Name = sample(letters, 10), Age = sample(20:50, 10), Score = runif(10))
data_table_2 <- data.table(City = sample(c("New York", "LA", "Chicago", "Boston"), 10, replace = TRUE), Country = rep("USA", 10), Temperature = rnorm(10))


set.seed(123)  
data_table_1[sample(1:nrow(data_table_1), 2), Score := NA]  
data_table_2[sample(1:nrow(data_table_2), 3), Temperature := NA]  


data_table_3 <- data.table(data_table_1, data_table_2) 

data_table_3 <- na.omit(data_table_3)

print(data_table_3)
