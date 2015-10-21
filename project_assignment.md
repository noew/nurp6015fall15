# Research project guidelines for NURP 6015
Noe Wiener  
August 29, 2015  

#### Purpose

When it comes to learning data analysis methods, there is nothing like doing it yourself. By going through the process of finding appropriate data, importing and "tidying" your data, applying various analytical tools to the data, and writing up the results, you will likely learn more than from all the books and lectures combined. This process requires time, some creativity, and persistence in the face of difficulties.

#### Delivarables

On December 21, each group will deliver:

- an in-class presentation of their data, method, results and interpretation, using RPres (ca. 30 minutes per group, each group member should speak).
- a Github repository containing all the documents necessary to reproduce the final report (including the final report itself in PDF format). The history of the repo should show sustained collaboration by all group members over the course of the semester.

#### Guidelines

- In the first three weeks of class you should form groups of two or three students with similar fields of research or interest.
- By the middle of the semester you should have identified a suitable existing data set, and you should have discussed your choice with me in office hours/during class.
- Once we cover the use of version control in class, your group should use it to collaborate and write up your analysis.
- Your report should include a discussion of the data set (refer to the documentation), descriptive statistics and/or plots of the relevant variables, a brief presentation of the analytical method employed, the fitted model (both as numbers/coefficient estimates, and as graphs) and an interpretation of the results. 
- You should adhere to the usual academic standards for attributing sources, avoiding plagiarism and clarity of expression.
- A brief review of the relevant literature may be beneficial, in particular to check whether your results are plausible in light of previous results.

#### Possible modeling approaches

- You may choose to fit a series of standard regression models (e.g. multivariate linear, logistic, generalized linear) and explore different methods of evaluating and comparing the models (measures of fit, simulation-based evaluation, ..).
- You could fit a more advanced multilevel/hierachical regression model (chapters 11-14 in G & H) to your data and discuss the choice of different distributions for the hyperparameters.
- Finally, you could also apply a technique that you would like to learn about but that is not covered in class (e.g. machine learning algorithms, factor analysis, ..)

#### To be covered in class

- We will collect links to publicly available datasets in a document on Github, to give you an idea of where to start looking.
- Reading data into RStudio.
- Principles of reproducible workflow: Documenting your work and explain what you are doing (commenting); Everything as a text ... 
- Typesetting from within RStudio: RMardown, a simple human-readable markup language that can be turned into nice PDFs, presentations, websites, ...
- Using Github for version control and collaboration. 
- Various data analysis tools that you can use to analyze your data (from simple multivariate regression to multilevel logistic regression)
- Some common data problems: missing data; complex survey design; ...

#### Limitations

- This research project has to be developed in a very short time span, which results in **unavoidable** limitations.
- You should not expect to end up with a publishable article by the end of this course, which would require us to spend more time on substantive (rather than methodological) questions.
- It may be that the data are so weak that they do not lend themselves to any strong conclusions. That is ok!
