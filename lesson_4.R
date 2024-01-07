## Задание 4

#1
View(DS)
#2
install.packages('pivottabler')
library(pivottabler)

pt <- PivotTable$new()
pt$addData(DS)
pt$addColumnDataGroups("Marital_Status")
pt$addRowDataGroups("Education")
pt$defineCalculation(calculationName="Total count", summariseExpression="n()")
pt$evaluatePivot()
pt



pt <- PivotTable$new()
pt$addData(DS)
pt$addRowDataGroups("Year_Birth")
pt$defineCalculation(calculationName="Total_count", summariseExpression="n()")
pt$evaluatePivot()
pt

#3
#

library(ggplot2)
ggplot(DS) + geom_bar(mapping = aes(y = Education, fill = Rich_flag))

#4

# На этом этапе не понимаю из каких данных строить график. Вроде как данные для построения 
# Можно получить из сводной таблицы. Но построить график без оси y или из сводной таблицы невозможно
ggplot(DS) + geom_line(mapping = aes(x = Year_Birth))

ggplot(DS) + geom_line(mapping = aes(x = Year_Birth, y = Age))
                            