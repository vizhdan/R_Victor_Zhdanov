install.packages("tidyverse")
library(tidyverse)

df <- read.csv("ДЗ3_superstore_data.csv")

str(df)
step_1 <- filter(df,Income > 30000)
step_2 <- select(step_1, Id, Year_Birth, Education, Marital_Status, Income, Response)
step_3 <- mutate(step_2, Age = (2023 - Year_Birth), Rich_flag = (Income > 30000))


group_ds2 <- group_by(step_3, Education)
group_ds2
midle_ds2 <- summarise(group_ds2, midle_Income = mean(Income))
midle_ds2 

DS <- left_join(step_3, midle_ds2, by = "Education")
DS
