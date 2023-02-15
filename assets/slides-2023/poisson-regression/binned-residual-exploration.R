par(mfrow=c(2,2))
n = 5000
X1 = rnorm(n)
score = X1
proba = exp(score)/(1+exp(score))
Y = rbinom(n, 1 ,proba)
plot(score, Y)
plot(X1, Y)
reg = glm(Y~X1,family=binomial)
points(score, predict(reg, type="response"), col="red")
plot(reg, which=1)
summary(reg)$coef

## not clear to me why the residuals (raw or response type) should have mean zero as a function of expected value
binnedplot(predict(reg),residuals(reg), nclass=5, ylab= "Average Residuals (raw)", col.int="red")
binnedplot(predict(reg),residuals(reg, type="response"), nclass=5, ylab= "Average Residuals (response)", col.int="red")

binnedplot(X1, residuals(reg), nclass=100, ylab= "Average Residuals (raw)", col.int="red")
binnedplot(X1, residuals(reg, type="response"), nclass=100, ylab= "Average Residuals (response)", col.int="red")
tmp <- tibble(x=X1, y=Y,
              raw=residuals(reg),
              resp = residuals(reg, type="response")) |>
  arrange(x) |>
  mutate(cumraw = cumsum(raw),
         cumresp = cumsum(resp))

## like a U: how could this ever be smoothed around zero?
plot(tmp$cumraw,type="l")

## like a random walk
plot(tmp$cumresp, type="l")


library(DHARMa)
DHARMa::testDispersion(reg)
simulationOutput <- simulateResiduals(fittedModel = reg, plot = F)
residuals(simulationOutput)
plot(simulationOutput)
## plotQQunif(simulationOutput) ## this doesn't work?
plotResiduals(simulationOutput)

## https://stats.stackexchange.com/questions/63566/unexpected-residuals-plot-of-mixed-linear-model-using-lmer-lme4-package-in-r
