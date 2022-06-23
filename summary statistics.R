  stat1 <- function(x){
  mean = mean(x)
  median = median(x)
  Mode = 3*median-2*mean
  sum = sum(x)
  count = length(x)
  min = min(x)
  max = max(x)
  var = sum((x-mean(x))^2)/(length(x)-1)
  sd = sqrt(var)
  sem= sd/sqrt(count)
  range= max-min
  cv = sd/mean*100
  cilow = mean-qt(0.975,count-1)*sd/sqrt(count)
  ciup = mean+qt(0.975,count-1)*sd/sqrt(count)
  return (data.frame(Mean= mean, Median = median, Mode = Mode,sum = sum,
                     count = count, min = min, max= max, variance = var,
                     sd = sd, sem = sem, range = range,conf.var= cv,
                      cilow = cilow, ciup=ciup))
}