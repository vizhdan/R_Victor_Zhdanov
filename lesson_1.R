a <- 10
b <- 2.3
Ab <- "hi"
  class(Ab)
print(round(a/b,2))
print(a<b)  
  
cat("Hello world|Hello world|Hello world")

cat(Ab,",", Ab,",", Ab)

for (N in 2021:2023) {
  print(paste("Маркетинговый проект запустился в", N, "году"))
}

for (N in 2021:2030){
  if (N <= 2023) {
    print(paste("Маркетинговый проект запустился в", N, "году"))
} else {
    print(paste("Маркетинговый проект только запуститься в", N, "году"))}
}  

