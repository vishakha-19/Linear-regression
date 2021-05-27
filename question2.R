View(Salary_Data)


boxplot(Salary_Data$YearsExperience,col = "dodgerblue")
boxplot(Salary_Data$Salary,col = "dodgerblue")

colnames(Salary_Data)

model<-lm(YearsExperience~Salary,data=Salary_Data)
summary(model)


pred=predict(model)
pred
final=data.frame(Salary_Data,pred,"Error"=Salary_Data-pred)
final
