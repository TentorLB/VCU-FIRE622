
data <- read.csv(text="a,b
                 1,2
                 4,2
                 5,6")

# I think this is most compact example
data$c <- ifelse(data$a>data$b,data$a,data$b)

# Looping example
for (i in 1:nrow(data))
{
  data$d[i] <- ifelse(data$a[i]>data$b[i],data$a[i],data$b[i])
}

# apply example
data$e <- apply(data,1, function (x) {ifelse(x[1]>x[2],x[1],x[2])})

#data$f <- apply(data,1, function (x) {sum(x)})

