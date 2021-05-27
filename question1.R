View(delivery_time)


boxplot(delivery_time$Delivery.Time,col = "dodgerblue")
boxplot(delivery_time$Sorting.Time,col = "dodgerblue")

colnames(delivery_time)

model<-lm(Delivery.Time~Sorting.Time,data=delivery_time)
summary(model)

#since the R^2 value is 0.68 which is less than 0.8 we conclude that this model is not a strong model. 
