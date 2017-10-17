## Poisson random effects simulation

library(dplyr)
library(ggplot2)
library(lme4)
library(gridExtra)

set.seed <- 7895
n_groups <- 100
means <- rnorm(n_groups, 0, 2)
overall_mean <- 0
ymin <- -4
ymax <- 4


dat <- data_frame(
    group_id = rep(1:n_groups, rep(c(2, 40), each=n_groups/2)),
    y = rpois(length(group_id), exp(overall_mean + means[group_id])),
    true_u = means[group_id],
    true_mean = exp(overall_mean + means[group_id])
)

plot_truth <- ggplot(dat, aes(group_id, overall_mean+true_mean)) + 
        geom_point() + ylab("log-scale group mean") + 
        coord_cartesian(ylim=c(ymin, ymax)) +
        geom_hline(aes(yintercept=overall_mean)) + ggtitle("true group means")
    

raw_means <- dat%>% group_by(group_id) %>%
    summarize(
        true_mean = exp(overall_mean+ means[mean(group_id)]),
        avg_y = mean(log(y)), 
        sd_y = sd(log(y)),
        est_lb = avg_y-2*sd_y,
        est_ub = avg_y+2*sd_y
    )
plot_raw <- ggplot(raw_means, aes(avg_y, y=avg_y-true_mean)) + 
    geom_point() + ylab("true mean") +
    ##coord_cartesian(ylim=c(ymin, ymax)) + 
    ggtitle("raw means")
    



fit_glm <- glm(y~factor(group_id)-1, data=dat, family="poisson")
pred_means_glm <- predict(fit_glm, newdata=data.frame(group_id=1:n_groups), se.fit = TRUE)
glm_means <- data_frame(
    group_id = 1:n_groups,
    true_mean = exp(overall_mean+ means[group_id]),
    est_mean = pred_means_glm$fit,
    est_lb = pred_means_glm$fit-2*pred_means_glm$se.fit,
    est_ub = pred_means_glm$fit+2*pred_means_glm$se.fit
)

plot_glm <- ggplot(glm_means, aes(y=est_mean-true_mean, x=est_mean)) +
    geom_point() + ylab("true mean") + xlab("estimated mean") +
    #coord_cartesian(ylim=c(ymin, ymax)) + 
    ggtitle("GLM means")


fit_glmm <- glmer(y~(1|group_id), data=dat, family="poisson")
glmm_means <- data_frame(
    group_id = 1:n_groups,
    est_mean = predict(fit_glmm, newdata=data.frame(group_id=1:n_groups)),
    true_mean = exp(overall_mean+ means[group_id]),
    true_u = means[group_id]
)

plot_glmm <- ggplot(glmm_means, aes(y=est_mean-true_mean, x=est_mean)) +
    geom_point() + ylab("true mean") + xlab("estimated mean") +
    #coord_cartesian(ylim=c(ymin, ymax)) + 
    ggtitle("GLMM means")

grid.arrange(plot_raw, plot_glm, plot_glmm, nrow=1)


means_compare <- data_frame(
    group_id = 1:n_groups,
    glmm_means_log = predict(fit_glmm, newdata=data.frame(group_id=1:n_groups)),
    glm_means_log = predict(fit_glm, newdata=data.frame(group_id=1:n_groups)),
    true_u = means[group_id],
    size = ifelse(group_id<=50, "small", "big")
)

ggplot(means_compare, aes(x=glmm_means_log, y=glm_means_log)) +
    geom_jitter(height=.5, width=.5) + geom_abline(aes(slope=1, intercept=0)) 
    #ylab("true mean") + xlab("estimated mean") +
    #coord_cartesian(ylim=c(ymin, ymax)) + 
    #ggtitle("GLMM means")

p1 <- ggplot(means_compare, aes(y=glmm_means_log, x=true_u, color=size)) +
    geom_point() + ylim(-20, 5)
p2 <- ggplot(means_compare, aes(y=glm_means_log, x=true_u, color=size)) +
    geom_point() + ylim(-20, 5)

grid.arrange(p1, p2, nrow=1)



