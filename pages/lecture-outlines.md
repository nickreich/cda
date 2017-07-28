## Outline for CDA classes

26 classes over 14 weeks.
 - 2: review, catch-up and exam in week 10
 - 2: project presentations
 - 1-2 catch-up
 - 18-20 distinct lectures

### Lecture 1: intro to CDA

 - class intro/syllabus
 - Lecture: intro to CDA
    - what is data, what is categorical data
    - types of categorical data
    - distributions of categorical data
    - Frameworks for inference: frequentist, likelihood, Bayesian
    - likelihoods for categorical data
    - Binomial tests of proportions
 - Activity: Bayes coin-flipping...
 - concepts to be reinforced out of class: 
    - inference about proportions (with Bayes?)
    - MLE/likelihood
    - differences in CI coverage at different values of true p.
    - derivations of CI coverage
    - chi-squared distribution
 
### Lecture 2: contingency tables

 - Lecture: contingency tables 1
    - basics of contingency tables
    - Study design (case-control, etc...)
    - building/testing a model for a cont. table
    - stratification 2x2xk tables
 - Activities:
    - given some data: write down a model, null hypothesis, test statistic
    - Explore Ken's OR vs RR app and...
 - concepts to be reinforced out of class: 
    - slides 26-28 from Anna Ch 2: conditional and marginal odds
    - concordant/discordant pairs
    - derive relationship between OR and RR
    
### Lecture 3: contingency tables

 - Lecture: contingency tables 2
    - More on models for contingency tables
    - Tests of independence (chi-sq)
    - delta method for logit (Chap 3.1.5)   
 - Activity
    - different groups use different cut-offs for a continuous variable to see how different results are
 - concepts to be reinforced out of class: 
    - chi-sq tests
    - new delta method example
    - power/sample size for contingency tables

### Lecture 4: GLMs
 
 - Lecture: Intro to GLMS
    - basic, general setup
    - overview of kinds of GLM
    - residuals
    - inference: likelihood, IRWLS, bayesian
    - detail on models for binary data (logistic/probit)
    
 - concepts to be reinforced out of class: 
    - other binomial models: clogit, loglog
    - fitting and optimization: IRWLS vs. Bayes
    
### Lecture 5: Modeling binary outcomes (Logistic regression, CDA 5-6)

 - Lecture
    - details of fitting/inference for logistic model (asymptotic ML vs. Bayesian?)
    - interpretation of logistic models/coefficients (continuous vs. categorical data)
    - interaction models
    - Diagostics for logistic: partitioning space based on Xs, predicted probabilities (AL notes Ch 5)
    - sensitivity/specificity
    
 - concepts to be reinforced out of class: 
    - interpretation of interaction terms, other coefficients: could use the Bian et al Science study reanalyzing the data as a binary outcome rather than continuous. Do results change?
    - ROC curves, proof of AUC being probability of right ordering
    - bigglm()


### Lecture 6: Modeling binary outcomes (Logistic regression and more, CDA 7)

 - Lecture
    - power/sample size calculation
    - conditional logistic regression/case control studies (for Cond. Logistic reg, see 11.2)

### Lecture 7: Modeling multinomial outcomes (CDA 8)

regression (Chapter

### Lecture 8: Poisson regression (not CDA)

### Lecture 9: Poisson regression (Neg Bin, ...)

### Lecture 10: Zero-inflated models

### Lecture 11: Estimation and Asymptotics (CDA 16)

### Lecture 12-13: Advanced parametric/semi-parametric modeling (smoothing, penalization)

### Lecture 13-14: Multi-level models
 - Random effects models
 - LDA

### Lecture 15-16: Non-model based CDA (CDA 15)


### Lecture 17: CDA History (CDA 17)





General GLM topics
  - links between GLMs and contingency tables
  - GAM/spline setup for all GLMs
  - inference: frequentist/ML vs. bayesian

