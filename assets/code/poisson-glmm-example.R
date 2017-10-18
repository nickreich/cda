## Poisson random effects simulation

library(dplyr)
library(ggplot2)
library(lme4)
library(gridExtra)
theme_set(theme_minimal())

## set parameters for generating data
set.seed <- 7895
n_groups <- 100
means <- rnorm(n_groups, 0, 2)
overall_mean <- 0
ymin <- -4
ymax <- 4

## generate data
dat <- data_frame(
    group_id = rep(1:n_groups, rep(c(2, 40), each=n_groups/2)),
    y = rpois(length(group_id), exp(overall_mean + means[group_id])),
    true_u = means[group_id],
    true_mean = exp(overall_mean + means[group_id])
)

raw_means <- dat%>% group_by(group_id) %>%
    summarize(
        avg_y = mean(y), 
        sd_y = sd(y)
    )

## fit the models

fit_glm <- glm(y~factor(group_id)-1, data=dat, family="poisson")

fit_glmm <- glmer(y~(1|group_id), data=dat, family="poisson")


## get data to compare
means_compare <- data_frame(
    group_id = 1:n_groups,
    glmm_means_log = predict(fit_glmm, newdata=data.frame(group_id=1:n_groups)),
    glm_means_log = predict(fit_glm, newdata=data.frame(group_id=1:n_groups)),
    true_u = means[group_id],
    size = ifelse(group_id<=50, "small", "big")
) %>% left_join(raw_means)

ggplot(means_compare, aes(x=true_u, y=glmm_means_log, yend=glm_means_log, color=size)) +
    geom_segment(aes(xend=true_u)) + geom_abline(aes(slope=1, intercept=0),linetype=2, color="grey") +
    geom_point(aes(shape='x'), size=5) + ylab("estimated group-level mean") + xlab("true u_i") +
    geom_point(aes(y=glm_means_log, shape='o'), size=5) +
    scale_shape_manual(name="Model", labels=c("GLM", "GLMM"), values=c('x'='x', 'o'='o')) +
    scale_color_discrete(name="Group size", labels=c("big (N=40)", "small (N=2)"))

ggplot(means_compare, aes(x=true_u, y=glmm_means_log, yend=log(avg_y), color=size)) +
    geom_segment(aes(xend=true_u)) + geom_abline(aes(slope=1, intercept=0),linetype=2, color="grey") +
    geom_point(aes(shape='x'), size=5) + ylab("estimated group-level mean") + xlab("true u_i") +
    geom_point(aes(y=glm_means_log, shape='o'), size=5) +
    scale_shape_manual(name="Model", labels=c("log(raw mean)", "GLMM"), values=c('x'='x', 'o'='o')) +
    scale_color_discrete(name="Group size", labels=c("big (N=40)", "small (N=2)"))

