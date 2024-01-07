View(DS)


### ДЗ_5

#1 Объедините столбцы Education и Marital_Status в один с помощью функции unite.
#2 Измените тип столбца Rich_flag с типа boolean на тип numeric.
#3 Проверьте каждый столбец датафрейма на NaN значения. При обнаружении — заполните пропуски нулём.
#4 Постройте диаграмму «ящик с усами», где в качестве X возьмите столбец Response, 
  # а в качестве Y — Age. Можно ли сделать выводы по построенному графику? Если да, то какие?
  # Напишите ваше мнение в комментариях в самом коде.
#5 С помощью функции str_which выведите на экран только те строки датафрейма, 
  # где возраст Age содержит хотя бы одну цифру 9.

library(tidyr)

sapply(DS, class)

#1
unite(DS, col='Education_and_M_Status', c('Education', 'Marital_Status'), sep='-')

DS_5 <- unite(DS, col='Education_and_M_Status', c('Education', 'Marital_Status'), sep='-')

#2 
class(DS_5$Rich_flag)

DS_RF <- as.numeric(DS_5$Rich_flag)

class(DS_RF)

#3

is.null(DS_5$Id)
is.null(DS_5$Year_Birth)
is.null(DS_5$Income)
is.null(DS_5$Education_and_M_Status)
is.null(DS_5$Response)
is.null(DS_5$Age)
is.null(DS_5$Rich_flag)
is.null(DS_5$midle_Income)

#4

ggplot(data = DS_5, aes(x = Response, y = Age)) +
  geom_boxplot()

ggplot(data = DS_5, aes(x = "", y = Age, group = Response, fill = Response)) +
  geom_boxplot()
#по диаграмме можно сделать выводы о среднем возрасте, а также опреедлить,
#что максимальные показатели возраста свзянны с показателем Response 0 


#5

install.packages("stringr")
library(stringr)

str_which(DS_5$Age,"9")
