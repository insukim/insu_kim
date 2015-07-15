

install.packages("ElemStatLearn")
library("ElemStatLearn")

sub = sample(nrow(spam), floor(nrom(spam)*0.9))
train = spam[sub,]
test = spam[-sub,]

xTrain = train[, 58]
yTrain = train$spam

xTest = test[, 58]
yTest = test$spam

model = train(xTrain, yTrain, 'nb', trControl = trainControl(method'cv', number = 10))
prop.table(table(predict(model$finalModel,xTest)$class, yTest))



 


#Example 1
ye.model <- lm(time~cal, data=calcium)
calcium$pred <- predict(ye.model, calcium)
plot(calcium$time, calcium$pred)
points(calcium$time, calcium$pred, col="blue", pch=16)
lines(calcium$time, fitted(ye.model), col="black")


#Example 2
newcalcium <- data.frame(time = seq(0, 15, 0.2))
newcalcium$pred <- predict(ye.model, newcalcium)
points(newcalcium$time, newcalcium$pred, col="green")
points(newcalcium$time, newcalcium$pred, col="green", pch=3)
lines(newcalcium$time, fitted(ye.model), col="black")