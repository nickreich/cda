---
layout: page
title: Project Description
---

#### Project Assignment
For the project you will create, in small groups, a thorough analysis of a particular dataset. The analysis project will have components completed by the group and by each individual student. Each group will prepare a formal written report and will present their project to the class in a 20-minute presentation.

Each group will be expected to hand in the following items

1. a PDF file containing the data analysis write-up that has been typeset using RMarkdown/knitr, submitted via group folder on Google Drive
2. a single paper copy of the final report.

Choice of a good dataset will be particularly important. Each group should consider multiple datasets as possibilities and will need to have their final choice approved by the instructor. Some possible datasets for consideration can be found [here](datasets.html).

#### Guidelines for the project write-up

Overall, the project write-up should be written in clear, concise prose, suitable for publication in a scientific journal. No code should be shown in the write-up, although it is expected that results provided in the write-up will be dynamically generated (i.e. if you report the results from a regression, you are calling the results directly from R and not inputting the numbers directly into the .Rmd file). You will need to be very judicious in your choices of what to include in the write-up, only leaving the items most central to the write-up's overall goals and theses. The topics chosen by individual group members should complement each other, i.e. there should be no major topic overlap, not everyone should do a power simulation, etc... 

Please follow the structure and page limits given below:

* cover page (title, names, table of contents): 1 page
* group data analysis (including tables/figures): 2 pages
* each individual data analysis (including tables/figures): 3 pages
* conclusion/discussion: 1 page

No page-cramming: i.e. nothing smaller than 11-point font, no less than 1 inch margins all around.

_Group Data Analysis_

The group-written data analysis will provide a brief summary of key features of the dataset. You should define and summarize each variable that will be used, either in a table or graphically, or both. Any central hypotheses or relationships that will be tested or explored should be defined here. At least a few sentences of context and description of the dataset should be included. This section should include a few tables and/or figures and should be no more than two pages long. Description of how missing data was handled (if any was present) should be included here (see more detail below).

_Individual Data analyses_

Additionally, each member of the group will lead a particular thread of analysis and/or dataset exploration that expands on a topic that we have covered in class, or on a new topic entirely. The write-up for each individual data analysis should not exceed three pages, including tables and figures. 

For this independent data analysis portion of the project, the two major paths that you can take are 

1. to fit a specialized model to the data (i.e. not just a GLM with main effect covariates) and interpret the output from the methods that you have used. Examples here could include regression trees, a multiple imputation analysis, or a more complex Bayesian analysis than what we have covered in class.
2. to create a simulation study that answers a particular question about your dataset or about appropriate methods for your dataset.  For example, you could compare the performance of two different methods in analyzing a particular dataset or discuss the performance of a particular diagnostic method for a particular method (i.e. what kind of residuals should we use for mixed models?). 

The data analysis write-up will contain a section for each group member's analysis and a conclusion that summarizes the results. 

_Missing Data_

Many datasets will have missing data in them. Your group will be expected to come up with an justifiable approach for dealing with any missingness in the data (i.e. multiple imputation, sensitivity analyses). Within a group, the approaches taken to deal with missing data should be consistent.

#### Project grading
Your project grade makes up 30% of your final grade for the class and will be calculated as follows:

* The final product produced by the group 50 points
  * 20 points: group data summary (clarity of data summary, quality of graphics/tables, adequate and accurate explanations of data, specific hypotheses defined, results summarized in conclusion/discussion section)
  * 15 points: group presentation (time limits adhered to, project clearly summarized and defined, key findings highlighted, polished presentation, handout provides useful detail and/or explanations)
  * 10 points: uniformity of presentation (individual write-ups have same look and feel, the project feels like a single work, not too disjointed, topic coordination a plus)
  * 5 points: project details (page limits adhered to, appropriate sectioning, etc...)
* Individually prepared data analysis 50 points
  * 35 points: overall quality (clear and accurate description of methods/models used, correct implementation and interpretation of method(s) used, appropriate use of equations to show what methods/models have been used, appropriate use of graphics/tables to support central results, summary of key results)
  * 15 points: individual presentation (clear statement/summary of goals and central results, use of figures rather than text to illustrate central ideas, time limit adhered to)


#### Deadlines
* Fri Nov 16: project outline (dataset proposal and draft topics) due
* Mon Dec 3: draft of individual analyses due in Google Drive, 5pm
* Tue Dec 11: Presentations in class
* Fri Dec 14: Projects due at 5pm
