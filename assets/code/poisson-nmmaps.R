library(dlnm)
library(tidyverse)
library(arm)
library(splines)

data("chicagoNMMAPS")

## plot the data
ggplot(chicagoNMMAPS, aes(x=date, y=death)) + geom_point()
ggplot(chicagoNMMAPS, aes(x=date, y=cvd)) + geom_point()
ggplot(chicagoNMMAPS, aes(x=date, y=resp)) + geom_point()
ggplot(chicagoNMMAPS, aes(x=date, y=temp)) + geom_point()
ggplot(chicagoNMMAPS, aes(x=date, y=dptp)) + geom_point()
ggplot(chicagoNMMAPS, aes(x=date, y=rhum)) + geom_point()
ggplot(chicagoNMMAPS, aes(x=date, y=pm10)) + geom_point()
ggplot(chicagoNMMAPS, aes(x=date, y=o3)) + geom_point()
ggplot(chicagoNMMAPS, aes(x=temp, y=pm10)) + geom_point() + geom_smooth()
ggplot(chicagoNMMAPS, aes(x=temp, y=o3)) + geom_point() + geom_smooth()

## some models
fit1 <- glm(death ~ dow,
           data = chicagoNMMAPS,
           family = poisson)

fit2 <- glm(death ~ temp + dow,
                data = chicagoNMMAPS,
                family = poisson)

nyear <- length(unique(chicagoNMMAPS$year))
fit3 <- glm(death ~ ns(time, 2*nyear) + temp + dow,
            data = chicagoNMMAPS,
            family = poisson)


chicagoNMMAPS$fit1_resid <- residuals(fit1)
chicagoNMMAPS$fit2_resid <- residuals(fit2, type="response")
chicagoNMMAPS$fit3_resid <- residuals(fit3, type="response")

binnedplot(predict(fit3), chicagoNMMAPS$fit3_resid)

summary(fit3)

plot(chicagoNMMAPS$time, chicagoNMMAPS$death, type="l")
points(chicagoNMMAPS$time, predict(fit3, type="response"), col="red", pch=".")
summary(chicagoNMMAPS$fit)


## fit models without the points in July 1995 that are so hot
tmp_idx <- 3117:3120
fit3_no_outliers <- glm(death ~ ns(time, 2*nyear) + temp + dow,
            data = chicagoNMMAPS[-tmp_idx,],
            family = poisson)
summary(fit3_no_outliers)
binnedplot(predict(fit3), resid(fit3_no_outliers, type="response"))
binnedplot(predict(fit3), resid(fit3_no_outliers, type="response"))

chicagoNMMAPS[-tmp_idx,"fit3a_predict"] <- predict(fit3_no_outliers, type="response")
chicagoNMMAPS[-tmp_idx,"fit3a_resid"] <- resid(fit3_no_outliers, type="response")

## residuals not around zero for month
binnedplot(chicagoNMMAPS[-tmp_idx,"month"], chicagoNMMAPS[-tmp_idx, "fit3a_resid"])
binnedplot(chicagoNMMAPS[-tmp_idx,"doy"], chicagoNMMAPS[-tmp_idx, "fit3a_resid"])

## basically good enough by year
binnedplot(chicagoNMMAPS[-tmp_idx,"year"], chicagoNMMAPS[-tmp_idx, "fit3a_resid"])


## more DF for splines?
fit4 <- glm(death ~ ns(time, 4*nyear) + temp + dow,
            data = chicagoNMMAPS,
            family = poisson)
binnedplot(predict(fit4, type="response"), resid(fit4, type="response"))
binnedplot(chicagoNMMAPS$month, resid(fit4, type="response"))
binnedplot(chicagoNMMAPS$year, resid(fit4, type="response"))
binnedplot(chicagoNMMAPS$, resid(fit4, type="response"))

plot(chicagoNMMAPS$time, chicagoNMMAPS$death, type="l")
points(chicagoNMMAPS$time, predict(fit4, type="response"), col="red", pch=".")

##

chicagoNMMAPS$temp_lag1 <- lag(chicagoNMMAPS$temp, 1)
chicagoNMMAPS$temp_lag2 <- lag(chicagoNMMAPS$temp, 2)
chicagoNMMAPS$temp_lag3 <- lag(chicagoNMMAPS$temp, 3)
chicagoNMMAPS$temp_lag4 <- lag(chicagoNMMAPS$temp, 4)
chicagoNMMAPS$temp_lag5 <- lag(chicagoNMMAPS$temp, 5)

fit5 <- glm(death ~ ns(time, 4*nyear) + temp + temp_lag1 + temp_lag2 + temp_lag3 + dow + pm10 + o3,
            data = chicagoNMMAPS,
            family = poisson)
summary(fit5)
plot(chicagoNMMAPS$time, chicagoNMMAPS$death, type="l")
points(chicagoNMMAPS$time, predict(fit5, type="response"), col="red", pch=".")

## fit 6, adapted from book
fit6 <- glm(death ~ ns(time, 4*nyear) + ns(temp, 6) + dow + tsModel::Lag(pm10, 1:10) + o3,
            data = chicagoNMMAPS,
            family = poisson)
summary(fit6)


## fit 7, mgcv
fit6 <- gam(death ~ s(time, k=3*nyear) + s(temp) + dow + Lag(pm10, 1:3) + Lag(o3, 1:3),
            data = chicagoNMMAPS,
            family = poisson)
summary(fit6)
plot(fit6)
binnedplot(predict(fit6, type="response"), resid(fit4, type="response"))

