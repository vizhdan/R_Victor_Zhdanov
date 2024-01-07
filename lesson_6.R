### Задание 6 

'
#1 Постройте точечный график (scatterplot) с помощью библиотеки Plotly, 
где в качестве измерений возьмите столбцы «Age» и «Income».

#2 Постройте тепловую карту (heatmap) с помощью библиотеки Plotly,
где в качестве измерений возьмите столбцы «Education» и «Marital_Status» (x и y значения), 
а в качестве метрики (z значения) — «Income_avg_edu».

#3 Постройте карту-дерево (tree map) с помощью библиотеки Plotly следующего вида

'

install.packages("plotly")
library(plotly)
View(DS)

#1
plot_ly(data = DS_5, x = ~Age , y = ~Income)

#2 


fig <- plot_ly(
  x = DS$Education, y = DS$Marital_Status,
  z = DS$midle_Income, type = "heatmap"
)

fig

#3


fig <- plot_ly(
  type="treemap",
  labels=c("Сотрудник_1","Реклама_1","Реклама_2","Сотрудник_2","Реклама_3"),
  parents=c(" ", "Сотрудник_1","Сотрудник_1"," ","Сотрудник_2")
)
fig


#4
'
Постройте карту (map) с помощью библиотеки leaflet, указав в качестве точки ваш любимый город 
или локацию, куда бы вы хотели совершить путешествие.'

install.packages("leaflet")
library(tidyverse)
library(leaflet)

map <- leaflet()
map <-  map %>% addTiles()
map <- map %>% addMarkers(
  lng = 30.297737, lat = 59.867349,
  label = "просто место"
)
map


#5
'С помощью библиотеки DT выведите всю информацию из анализируемого датасета в таблицу.'

install.packages("rpivotTable")
install.packages("DT")
library(DT)
library(rpivotTable)

datatable(DS)


#6
'С помощью библиотеки rpivotTable выведите информацию из анализируемого датасета в сводную таблицу,
где по умолчанию в rows (строках) укажите «Education», в cols (столбцах) — «Marital_Status».'

rpivotTable(DS, rows = "Education", cols ="Marital_Status")
