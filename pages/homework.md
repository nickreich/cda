---
layout: page
title: Homework
tagline: 
---

Homework assignments will be posted here, in general organized by due date. Unless otherwise specified, parts of homework assignments that need to be handed in should be handed in via your personal Google Drive folder that only you and the instructor have access to. 

**Collaboration on homework is expected and encouraged, although you must write up your own assignment. No copying or cutting and pasting.**

_Due Thursday 3/10 in class_

* [Small group presentation on stepwise model selection simulations](group-pres-2.html). 


_Due Thursday 3/10 in class_

* [Small group presentation on pitfalls of data analysis](group-pres-1.html). 

_Due Thursday 3/3/2016, 5pm_

* [Lab 4](../assets/labs/lab4-mlr-selection/lab4-mlr-selection.pdf).


_Due Tuesday 3/1/2016_

* Read _ISL_ Chapter 5, 6.1: on model selection and cross-validation.


_Due Thursday 2/25/2016, 5pm_
 
* (30 points) [Lab 3](../assets/labs/lab3-mlr-inference/lab3-mlr-inference.pdf).

_Due Tuesday 2/16/2016, 5pm_

* (20 points) Revise and resubmit the report on the dataset that you handed in on 2/2/2016. The new report should include some of the information that you had written previously, should make improvements suggested from the earlier version, and have 1 or 2 additional multiple linear regression models. If appropriate, use dummy variables to model categorical predictors. Interpret some of the MLR model coefficients in the context of your particular dataset. The report should be less than 6 pages, including all figures, and should be submitted as both PDF and Rmd formats.
* Read _ISL_ Chapter 6.1, _PR_ Ch. 3, 7 and 8.


_Due Tuesday 2/9/2016_

* Read _ISL_ Chapter 3.2-3.3 and _PR_ Chapter 2.
* (30 points) Complete [Lab 2](../assets/labs/lab2-mlr/lab2-intro-mlr.pdf). Hand in a PDF and Rmd file via Google Drive. The final PDF file should be no more than 6 pages, including graphs.

_Due Tuesday 2/2/2016, 5pm_ 
(PDF and Rmd files to be handed in via Google Drive) 

* (30 points) Hand in Lab 1 writeup as PDF file knitted using RMarkdown on Google Drive.
* (20 points) Create a short reproducible document (using knitr) that describes the basic structure of a dataset and summarizes some key features of the data using a few key tables and figures. Choose a dataset from [these datasets](datasets.html),  the ones in the class Google Drive, or some other dataset that interests you. _Be sure to pick a dataset that has a continuous variable that you can use as an outcome variable in a linear regression model._ Your write-up should address the following points:
  * What is the background/context for this data? 
  * Data management: How many observations are there? Is the data tidy? What is the unit of observation? 
  * Data validation: Is there any missing data? If so, are there patterns to the missingness? Are there any obvious outliers in the data?
  * Choose 4 to 10 key variables from your dataset (including the outcome variable). Include a codebook-style table that lists for each chosen variable the names, definitions, type of variable (i.e. categorical, continuous, binary), and the number of missing observations. Choose at least two of these variables and provide figures that show their univariate distributions. Describe the plotted distributions in words.
  * Run simple linear regressions with two different predictor variables. Interpret the results. Plot a scatterplot of each regression and include the fitted line on the graph. Rescale your predictor variables if necessary to obtain a meaningful interpretation of beta0.
* (10 points) Using R, create an example of Simpson's paradox using simulated data, where you have a continuous outcome variable, one continuous x variable, and one categorical x variable. It is not necessary to fit regression models to show the paradox, but you should use several graphics to illustrate the slopes, as was shown in the slides for class 1. You should simulate your data using probability distributions with the R functions such as `rnorm()`, `runif()`, `rpois()`, etc... Every time your .Rmd file is re-knit, you should end up with different data, but the story should be the same. 

_Due Tuesday 1/26/2016_

* Read ISL Chapters 1 and 3.1.
* Read Faraway Chapters 1 and 2.
* Read through the syllabus.
* (5 points) Create a Google Drive folder named "[LastName]-[FirstName]-690NR" (e.g. "Reich-Nick-690NR") and share it with me (nick at umass dot edu). You will use this folder to hand in homework assignments.
* (10 points) Hand in Problem 8 (part c is optional) from ISL Chapter 3 as a PDF file created using RMarkdown. You may use ggplot2 functions instead of base R graphics. This assignment should be submitted electronically by placing the file in your Google Drive folder created above.
* (Review) Brush up on creating data analysis reports using RMarkdown. 
* (Review) If you don't know what ``tidy data'' is, [read about it](http://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html).



<!--
_Due Wednesday 4/8/2015, 5pm_ 

* (30 pts) [Lab 5](../assets/labs/lab5-amelia-missing-data.pdf).


_Due Thursday 3/26/2015, 11am_ 

* (20 pts) [Lab 4](../assets/labs/lab4-mlr-diagnostics.pdf).

_Due Thursday 3/5/2015, 11am_ 

* (30 pts) Conduct a simulation study that evaluates the inferential properties of least square estimates, using a simple or multiple linear regression data generation model. Your final write-up should define a linear regression data generation model (i.e. write down the formula for the model, and define all parameters). You should explicitly choose one or two parameters that you will systematically vary to and the quantitative metric that you will use to evaluate the estimates. (See examples below.) Your write-up should state the hypothesis that you had before running the simulation, present results from the simulation study, and evaluate whether your hypothesis was correct or not. You do not need to run a formal hypothesis test, just evaluate quantitatively and/or qualitatively how the performance varied across the parameterizations that you simulated. You should simulate from at least 10 different parameter sets (and probably at least 25 if you have two parameters). Your final write-up should not exceed 3 pages and should include 1 or 2 tables and/or figures showing the results of your simulation study that clearly capture the key trends you observed. You should be prepared to discuss your study design in class on Tuesday. Here are some examples of possible topics
   + Examine the impact of the number of covariates on the MSE (or 95% confidence interval coverage) of a regression coefficient for one predictor variable.
   + In an SLR setting, evaluate the degree to which the MSE or confidence interval coverage is impacted by non-constant variance of the residuals.
   + Show how the power to detect a non-zero regression coefficient changes as a function of the sample size and/or the residual variance. 
   + Examine the average bias or MSE in estimating a regression coefficient if the residuals are drawn from a symmetric distribution with mean zero, but with increasing variance (e.g. a Cauchy or Student's T distribution). \
   + Examine whether a spline method (penalized splines, natural splines, b-splines, etc...) is as powerful at detecting a non-linear (i.e. quadratic, logarithmic, ...) relationship between two variables, as the true function itself.

_Due Thursday 2/26/2015, 11:30am_ 

* (30 pts) [Lab 3](../assets/labs/lab3-mlr-inference.pdf).







FROM 2014 COURSE

#### Class 1 (Jan 21): Course Introduction 

_Homework_

* Problem Set 1: Due Thursday, 2/13/2014 (by the beginning of class)
* Create GitHub account, pull course repo into a directory on your machine. For instructions, see [this video](http://www.youtube.com/watch?v=YxZ8J2rqhEM).


#### Class 2 (Jan 23): Introduction to Regression

_Homework_

* Problem Set 1: Due Thursday, 2/13/2014 (by the beginning of class)

#### Class 3 (Jan 28): Geometry of regression and least squares

_Homework_

* Problem Set 1: Due Thursday, 2/13/2014 (by the beginning of class)
* Add one or two simple linear regressions to your dataset write-up. 
* Finish OpenIntro Lab 7.
* Install the HSAUR2 package, read up on and explore the BtheB dataset (hint: ``?BtheB``). Be prepared to describe the dataset and answer questions about it in next class.

#### Class 4 (Jan 30): Hands-on SLR practice 

_Homework_

* Problem Set 1: Due Thursday, 2/13/2014 (by the beginning of class)
* In your small groups, create a write-up for a simple analysis of the BtheB dataset. Each group should create a repository on GitHub for their analysis. The .Rnw or .Rmd file that you use should be in that repository and every member of the group should have at least one commit or push to the repository before the next class. (You should not commit any additional files, like the .aux files from LaTeX compiling, just the files that are needed to comile your analysis.) Here is a minimal list of things that should be included in your write-up. I encourage you to push beyond just this list, however. 
  * A few sentences of background/context for the BtheB dataset.
  * A quantitative and/or visual description of what variables you chose to use for your analysis, along with a hypothesis (or two) that you will be testing.
  * A description of the characteristics of the missing data (including a figure if needed) and a statement and justification as to whether your group is concerned about the missingness having an impact on your analysis.
  * Results, with interpretation, of output from an SLR model. We haven't discussed yet using binary predictors or X variables, but feel free to include them. The interpretation is very similar. "For a one unit change in X, ..."
* Read [this description](http://nicercode.github.io/guides/functions/) of how to write and use functions in R.

#### Class 5 (Feb 4): R^2, ANOVA

_Homework_

* Problem Set 1: Due Thursday, 2/13/2014 (by the beginning of class)
* Create a "slr()" R function that takes x and y vectors and outputs a list with two objects: (1) a fitted lm() object and (2) by-hand betas (calculated by likelihood or formulae). Try to write this as a function, but if you have trouble, then just write it as a few lines of R code and create an object as described.
* Use this new slr() function/code to refit the SLR models in your dataset writeup. Compare the results and make sure they are returning the same thing. 

#### Class 6 (Feb 6): Version control

_Homework_

* Problem Set 1: Due Thursday, 2/13/2014 (by the beginning of class)

#### Class 7 (Feb 11): MLR interpretations

_Homework_

* Problem Set 1: Due __Tuesday, 2/25/2014__ (by the beginning of class)
* Add a fitted MLR to your dataset write-up. State the model, in equation form. Describe it in words. Interpret your fitted coefficients.

#### Class 8 (Feb 13): 
SNOW DAY, CLASS CANCELLED.

#### Class 9 (Feb 20): MLR estimation and notation 

_Homework_

* Problem Set 1: Due __Tuesday, 2/25/2014__ (by the beginning of class)
* &nbsp;

#### Class 10 (Feb 25): MLR collinearity

_Homework_

* Problem Set 1: Due TODAY at beginning of class

#### Class 11 (Feb 27): MLR categorical variables

_Homework_

* [Problem Set 2](ps2.html), Due Friday 3/7, 5pm. 

#### Class 12 (Mar 4): MLR inference and testing

_Homework_

* [Problem Set 2](ps2.html), Due Friday 3/7, 5pm.
* Include one global F test (with written interpretation) in your problem set 2 write-up.

#### Class 13 (Mar 6): MLR GLobal F Tests

_Homework_

* [Problem Set 2](pages/ps2.html), Due Friday 3/7, 5pm.
* Visualization assignment: Please dig through the scientific literature (no limit on the discipline, but I'd encourage you to look in the literature for your field) and find a paper that uses some form of multiple linear regression models. The paper should be about modeling a continuous outcome (no logistic/log-linear/etc.. models) and could incorporate some more fancy modeling things than we've talked about (e.g. spline terms, polynomials, random effects). The paper should have a figure/graphic in it that attempts to visualize features of the regression. Post a link to the paper on Piazza (either a URL or a PDF file), with a note about which graphic you think is most relevant to the discussion, and describe what tool(s) you used to find the paper (e.g. Google Scholar, PubMed, Scopus, ...). Feel free to comment/start discussion on papers that other students post, but everyone is expected to find their own paper. I'll choose one that we'll talk about in more detail on Tuesday.

#### Class 14 (Mar 11): MLR non-parametric inference

_Homework_

* Start a new data analysis write-up, include a brief summary from the first round. 
* Add bootstrapped inference to the new write-up.

#### Class 15 (Mar 15): MLR diagnostics

_Homework_

* Dataset for final project proposed by Wednesday, March 26

#### Class 16 (Mar 25): MLR diagnostics (continued)

_Homework_

* Dataset for final project proposed by Wednesday, March 26
* Individual project topics proposed by Wednesday, April 2
* Problem set 3 due Friday, April 4 at 5pm.

#### Class 17 (Mar 27): MLR model selection

_Homework_

* Individual project topics proposed by Wednesday, April 2
* Problem set 3 due Friday, April 4 at 5pm.

#### Class 18 (April 1): MLR interactions, variable transformations

_Homework_

* Individual project topics proposed by Wednesday, April 2
* Problem set 3 due Friday, April 4 at 5pm.

#### Class 19 (April 3): Spline models

_Homework_

* Problem set 3 due Friday, April 4 at 5pm.

#### Class 20 (April 8): GLMs and logistic regression

_Homework_

* Mon Apr 14: Draft of individual data analysis due (hand in PDF in your group's project folder on Google Drive)

#### Class 21 (April 10): Logistic regression competition

_Homework_

* Mon Apr 14: Draft of individual data analysis due (hand in PDF in your group's project folder on Google Drive)

-->

