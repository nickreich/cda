
## see https://lingpipe-blog.com/2009/10/13/bayesian-counterpart-to-fisher-exact-test-on-contingency-tables/
    
library("MCMCpack")
y1 <- 10; n1 <- 22
y2 <- 2; n2 <- 28

## params: p1, p2
## H0: p1=p2, p1-p2=0

## priors for p1, p2: 
##   theta_i ~ Unif(0,1) = Beta(1,1)

nsim = 10000 # simulations
theta1 = rbeta(nsim, y1+1, (n1-y1)+1)  
theta2 = rbeta(nsim, y2+1, (n2-y2)+1)
diff = theta1-theta2  # simulated diffs

quantiles = quantile(diff,c(0.005,0.025,0.5,0.975,0.995))
print(quantiles,digits=2)

print("Probability higher % sick when you worked on that night...")
print(mean(theta1>theta2))
