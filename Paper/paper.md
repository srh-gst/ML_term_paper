---
output: 
  pdf_document:
    keep_tex: true
    #  citation_package: natbib
    fig_caption: true
    latex_engine: pdflatex
    template: header.tex
title: "Term Paper Proposal"
author:
- name: Sarah Gust
  affiliation: ifo Institute at the University of Munich, [gust@ifo.de](mailto:gust@ifo.de)
- name: Ann-Christin Kreyer
  affiliation: Max Planck Institute for Innovation and Competition, [ann-christin.kreyer@ip.mpg.de](mailto:ann-christin.kreyer@ip.mpg.de)
abstract: "This is where we put the abstract..."
date: "`r format(Sys.time(), '%B %d, %')`"
geometry: margin=1in
fontfamily: mathpazo
fontsize: 11pt
header-includes:
  -  \usepackage{hyperref}
spacing: double
---

# Introduction

What is the topic of your dissertation? What were the reasons for choosing this topic? What is your **research hypothesis**? How do you define the central terms of your hypothesis? Why and for whom is it important to answer these questions?

- Motivate (one paragraph).
- Summarize what we know (one paragraph).
- Third paragraph: Tell us what you are doing!
- Describe research design.
- Value added.
- Summarize key findings.
- DO NOT write a “roadmap”.
- No subsections in the Introduction




# Literature 

(We contribute to the literature on digitalization, job tasks, training, and job mobility.)

Computer capital and workers that perform routine tasks are substitutes whereas computer capital and workers that perform non-routine cognitive tasks are complements [@autor2003skill]. The declining price of computer capital has led to a U-shaped labor demand function [@acemoglu2011skills; @david2013growth]. This indicates that middle-skilled workers were replaced by technology while the demand for high skilled workers and low-skilled workers has grown. @david2013growth show that increased employment at the lower tail of the earnings distribution is mainly due to an increase in service occupations. At the upper tail technological changed led to a college wage premium: wages of college graduates relative to high-school graduates increased [@acemoglu2011skills].  @delarica2020job develop abstract, routine and manual task measures and find that a one-standard-deviation increase in abstract tasks is related to a 3.3-log-point wage premium. For each standard deviation of routine tasks there is a 2.6 to 2.9-log-point wage penalty.

This vast literature on the change of job tasks has mainly focused on wage effects and takes skills of workers as pre-defined. However, workers and firms could also invest in new skills via training.  

@becker1962investment distinguished between two kinds of on-the-job training: specific and general. Specific training increases the marginal product of a worker within one specific firm while general training increases her productivity in many other firms. In a perfect labor market workers are paid their marginal product. In such case, firms would not invest into general training of their employees as they could leave the firm and look for a better paid job. Instead, workers would pay for their general training as an investment into higher future wages. @acemoglu1999beyond argue that firms still invest in general training due to their monopsony power. Wages increase by less than the marginal productivity and firms can profit. @konings2015impact find that an increase in the share of trained work-ers by 10 percentage points raises the productivity by 1.7 to 3.2 percent while wages only increase by 1.0 to 1.7 percent. 

Evidence on job mobility behaviour of workers is more mixed. @zweimuller2003job findings support @becker1962investment human capital theory. Workers who received firm specific training quit less often and show less job searching behaviour. Workers who received general training increased their job searching activities and quit more often. @dietz2020retention use German employer-employee data and find that training increases the retention probability. These studies focus on on-the-job training. 

@lynch1991role and @lynch1992private compares on-the-job to off-the-job training. She focuses on young workers that are particularly mobile. She finds that on-the job training tends to be firm specific in the US and thus wage raises cannot be taken along to subsequent employers. Off-the-job training by proprietary institution have little effect on wages in the current employment but raise future expected wages in subsequent employment. @lynch1991role shows that the probability of leaving an employer varies with respect to race, gender, and educational level. Workers with disabilities, black workers and workers with a high school degree or less increased the probability of leaving the first employer. Working in a job with collective agree-ment or having a college degree decreased their probability of leaving the employer. The effect of training, disability, and education disappears when @lynch1991role re-estimates the equation only for men, while these effects are particularly strong for women. 

Applying a machine learning approach permits us to take a broader approach on this topic. Instead of restricting our estimation to a specific group of workers or countries, we identify the factors that drive the probability of leaving-a-job and job-switching from a set of ## variables.

- mostly effect on wages, inequality


<!---

What is the crucial literature about the topic? What are the open research questions? How does the research hypothesis relate to the existing literature on the topic? Are there other dissertations that cover the same topic?

- Discuss relevant literature.
- Do not start with Adam Smith (unless you are discussing his work).
- Focus on articles in journals, avoid textbooks.
- Try to find the “frontier”—what are the unsolved questions?
--->

# Data

What is the epistemological framework of the dissertation? For empirical studies it should be made clear: Why were the specific methods of data analysis chosen? How was the data acquired?

To explore these questions we use the results of the survey of the Programme for the International Assessment of Adult Competencies (PIAAC) (@GESISLeibnizInstitutefortheSocialSciences.12.02.2021). The survey was conducted by the Organisation for Economic Co-operation and Development (OECD) with the goal to assess which skills adults need to manage challenges and tasks at work as well as in their personal life. The study targeted explicitly the skills in literacy, numeracy and adaptive problem solving while also comprising comprehensive background information on the respondents past and current education, subjective assessments of their skills and job requirements as well as information on migration (@GESISLeibnizInstitutefortheSocialSciences.12.02.2021). 
The first cycle consisted of three rounds and began in 2011/12. In the first round 24 countries took part. In the second round nine additional countries participated and in the last round individuals from five different countries were questioned. In total 40 countries participated in the first cycle comprising about 5,000 randomly selected adults who were between 16 and 65 years old. The second cycle started in 2018 and results are to be expected in 2022 (@GESISLeibnizInstitutefortheSocialSciences.12.02.2021). 

For the study at hand the results of the first wave are used in a reduced form. The original dataset comprises 1,460 columns with 230,691 observations of respondents. However, the 'research question of this paper is to analyze the probability of trainings for middle-skilled workers compared to trainings for high-skilled and low-skilled workers in the wake of the increasing polarization of skills following from digitization'. To answer this, the original PIAAC dataset is reduced to 130 variables in total, including indices. For example, information on the various test results conducted in the study are excluded. To achieve comparability across countries, questions which were only answered by respondents living in the United States are also excluded. 
The final dataset is cross-sectional with one observation representing the answers of one respondent. 

The 130 variables we kept in the final dataset comprise information on the individual's background information, her past and ongoing formal or informal education, information on training activities, information on ICT skills and the respective extensive and intensive margin, her subjective job requirements, information on her curent job and information on monthly income.
As we do not restrict the dataset in terms of respondents but only in terms of questions answered, our final dataset comprises 230,691 observations of individuals.
Of those 230,691 individuals, 122,830 are female and 107,859 are male (see Figure \ref{hist_gender}). The age of the respondents is evenly distributed between the ages 16 to 64 with a female mean age of 39.95 years and male mean age of 39.38 (see Figure \ref{hist_age}).  
The classification of the respondents jobs in terms of skills is also evenly distributed across age groups and gender. However, respondents working in semi-skilled white-collar occupations are slightly younger than those working in skilled occupations or semi-skilled blue-collar occupations (see Fiugre \ref{box_age_job}).  


The key variables of this study are the the skill classification of the individual's job and her trainings comprising on-the-job training, seminars or workshops, distance or open training courses as well as private lessons. 
The simple OLS regressions reveal that there are positive correlations between the high-skilled jobs and the number of trainings respondents participated in. This holds true for on-the-job-training, seminars or workshops, distance or open educational training as well as for private lessons. However, for semi-skilled jobs, the picture is slightly different. Here, the number of seminars or workshops and private lessons are positively correlated with the semi-skilled occupations. 

![Distribution of Gender\label{hist_gender}](..\Results\Plots\barplot_gender.png){ width=50% }

![Distribution of Age\label{hist_age}](..\Results\Plots\hist_age.png){ width=50% }

![Age and Classification of jobs\label{box_age_job}](..\Results\Plots\box_age_job_classification.png){ width=50% }

 
 
- Name, source, unit, time, structure, number of observations, relevant population.
- Definition of (main) sample.
- Definition and characteristics of key variables.
- Limitations and potential biases.
- Provide the data and the software code (replication).
- Plot the main empirical associations you want to study!
- Do NOT assume the reader knows anything about these data

# Lasso Linear Model

We start with a simple linear regression model $y = X \beta + \varepsilon$, where $y \in \mathbb{R}^N$ is the predicted participation in on-job or off-job training,  $X \in \mathbb{R}^{N \times k}$ are the vectors of covariates, and $\varepsilon \in \mathbb{R}^N$ is the residual with the standard assumptions of OLS. To select the set of covariates with the strongest predictive power from our set of ... variables, we apply the Least absolute shrinkage and selection operator (Lasso) that was first proposed by @tibshirani1996regression. We add the Lasso penalty equal to $\sum_k |\beta_k|$ to our linear model. The Lasso linear estimator $\hat{\beta}$ is then given by

$$ \hat{\beta}_\lambda = argmin\{\sum_i (y_i-x_i^T\beta)^2  + \lambda\sum_k |\beta_k|\}  $$ {#eq:lasso}

That is, we minimize the sum of squared residuals but the Lasso penalty puts a cost at every $\hat{\beta} \neq 0$ and thus, we penalize complexity and avoid over-fitting the model. $\lambda >0$ is the penalty weight or the *tuning parameter*. 

## Training the Model 

Figure \ref{lasso_onjob} and Figure \ref{lasso_open} show the lasso regularization path of candidate models $\hat{\beta}_1$ ... $\hat{\beta}_t$ that we obtained by minimizing Equation @eq:lasso over a sequence of tuning parameters $\lambda_1 < \lambda_2 < ... < \lambda_T$ with on-job training and off-job training as dependen variable respectively. The vertical axis contains different levels of $\hat{\beta}$. The horizontal axis contains different levels for $\lambda$. Each vertical section along the horizontal axis, represents one candidate model. Moving from higher to lower $\lambda$, the algorithm includes more nonzero $\hat{\beta}_k$ and becomes more complex. To find the optimal value for $\lambda$ we use *5-fold cross validation*. We split the data in 5 random evenly sized subset and derive the lasso paths $\hat{\beta}_1^k$ ... $\hat{\beta}_T^k$ on each of the folds but one fold to train the models. Then we use the left out fold to obtain the out-of-sample error for each candidate model. The best $\hat{\lambda}_t$ minimizes the out-of-sample error.     

![Lasso path for on-job training\label{lasso_onjob}](..\Results\Plots\lasso_path_onJob.png){ width=50% }

![Lasso path for off-job training\label{lasso_open}](..\Results\Plots\lasso_path_openeduc.png){ width=50% }


describe optmal $\lambda$ and p* here 

## Variable Selection

present most important variables here

## Out-of-Sample Evaluation Results

present out of sample performance and compare to OLS

# Lasso Logistic Model 

We now estimate the Lasso model for the binary oucome variables of whether or not a person received on-job training and whether or not a person participated in an off-job training. We estimate the Lasso-regularized logistic model for the probability that a person received one specific training as follows: 

$$  \hat{\theta}_\lambda = argmin (-l_N(\theta)) + \lambda\sum_k |\theta^k| $$ {#eq:lasso_logit}

where $l_N(\theta))$ is the log-likelihood function

$$ l_N(\theta)) = \sum_{i}[y_i x_i \theta -log(1+e^{x_i \theta})] $$

$\sum_k |\theta^k|$ is the lasso penalty that shrinks coefficients of little explanatory power to zero. $\lambda >0$ is the penalty weight. 

## Training the Model 

Figure \ref{lasso_logit_onjob} and Figure \ref{lasso_logit_open} present the Lasso regularization path for the logistic candidate models. The models are ordered from the most penalized to the least penalized model and the algorithm includes more non-zero coefficients in the model. We select  $\lambda$ by a *5-fold cross calidation* process. This yields an optimal Lasso penalty of 1.6238 for on-job training and 1.62 for off-job training.   

![Logistic model: Lasso path for on-job training\label{lasso_logit_onjob}](..\Results\Plots\lasso_logit_on_job.png){ width=50% }

![Locistic model: Lasso path for off-job training\label{lasso_logit_open}](..\Results\Plots\lasso_logit_open_educ.png){ width=50% }

## Variable Selection

The Lasso logit model indentifies 145 columns^[Including country and industry controls] with non-zero predictive power for on-job training. We present the coefficients in Table \ref{log_reg_onjob}. Let us first turn to the results for the skill level. *skill_4* are elementary occupations and represent the reference group here. *skill_3* is the dummy variable for semi-skilled blue-collar occupations, *skill_2* is the dummy for semi-skilled white-collar occupations, and *skill_1* is the dummy for skilled occupations. Working in a semi-skilled blue-collar occupation increases the probability of receiving training by or white-collar occupation compared to working in an elemetary occupation has no effect on the probability of receiving training. But working in a skilled occupation increases the probability of receiving training by 9.3~% relative to working in an elementary occupation.

The dummy variable for whether a person was employed during studying for a qualification, *b_q10a_Yes*, has the highest positive explanatory power. If a person uses a computer on this specific job (*g_q04_Yes*), it increased the probability of receiving on-job training by 64.23~%. Having general computer experience (*computerexperience_Yes*) increases the probability of receiving on-job training by 43.11~%. People are 25.79~% more likely to participate in on-job training, if they have the feeling that they need more training in order to cope well with their present duties (*f_q07b_Yes*). Moreover, employees are more likely to receive training if they work in larger companies, compared to smaller companies and if they have a higher educational level.

If a job does not involve keeping up to date with new services and products (*d_q13c_Never*), it lowers the probability of reveiving training by 33.37~%. Never participationg in online discussions such as conferences (*g_q05h_Never*) reduces the probability of receiving on-job training by 37.38~%. Also, having a low education level, if a job needs less than one month of prior work experience, and working in a job without a contract have the most negative effects on the chances of participating in on-job training.

For off-job training, the Lasso logit model identifies 138 non-zero columns^[Including country and industry controls] The results look very similar to the on-job training. Working in a skilled occupation increases the probability of participating in open education by 9.14~%. The indicator for semi-skilled white-collar workers is also positive but with a magnitude of 0.0861~% very small. As in on-job training, the most important feature is being employed and using the computer on this specific job (79.04~%) or having general computer experience (63.8~%). Also working in a larger company and having a higher educational level increases the probability of participating in open education. Lower education, having no contract, and never using the computer for work tasks negatively effect the probability of participating in open education. 

## Accuracy of the Model 

Finally, we evaluate the accuracy of the Lasso logit model. Figure \ref{confusion_onjob} presents the confusion matrix for on the job training. 10941 are true negative prediction and there are 85 true positive predictions. The model yields 1203 false negative predictions and 56 false positive predictions. We present the confision matrix for open education in Figure \ref{confusion_open}. For this model, we obtain 10940true negative predictions and 84 true negative predictions. 1204 + 57 are incorrect predictions.      

![Logistic model: Confusion matrix for on-job training\label{confusion_onjob}](..\Results\Plots\confusion_on_job.png){ width=50% }

![Locistic model: Confusion matrix for off-job training\label{confusion_open}](..\Results\Plots\confusion_open_educ.png){ width=50% }

In Table 

Table: Accuracy of the Lasso logistic model

|                     |   Lasso Logistic Model | Logistic Model  |
|--------------------:|-----------------------:|:----------------|
|  On-job training                                               |
|  Training accuracy  |   0.7886               | 0.4987          |
|  Test accuracy      |   0.7822               | 0.5067          |
|--------------------:|-----------------------:|:----------------|
|  Off-job training                                              |
|  Training accuracy  |   0.7950               | 0.4987          |
|  Test accuracy      |   0.7892               | 0.5067          |




- Describe how the hypothesis is linked to your estimation.
- Describe the estimation using equations.
- Discuss the parameters and variables.
- What are the identifying assumptions, what are (possible) violations and their consequences?
- What will you do about this?


- Tell a story!
- Guide the reader.
- Focus on the key points, not the details.
- Discuss quality and quantity.
- Discuss problems.
- Compare to the literature.

# Further steps 

Which results can be expected? What is new? Where lies the progress for science? In what way can scientific discussion proceed / be stimulated by the thesis?

# (APPENDIX) Appendix {-} 

# Appendix: Tables

Table: Lasso logistic regression for on-job training \label{log_reg_onjob}

\footnotesize
|    |   Coefficients | Feature                                                                      |
|---:|---------------:|:-----------------------------------------------------------------------------|
|  0 |   -0.016459    | age_r                                                                        |
|  1 |    0.0166996   | j_q03b                                                                       |
|  2 |    0.0205559   | yrsget                                                                       |
|  3 |    0.00927976  | c_q09                                                                        |
|  4 |    0.00388655  | c_q10a                                                                       |
|  5 |    0.0559252   | readytolearn                                                                 |
|  6 |   -2.07843e-07 | earnmthallppp                                                                |
|  7 |    0.0831342   | gender_r_Male                                                                |
|  8 |   -0.0149177   | d_q13c_Every day                                                             |
|  9 |   -0.178626    | d_q13c_Less than once a month                                                |
| 10 |   -0.127389    | d_q13c_Less than once a week but at least once a month                       |
| 11 |   -0.556924    | d_q13c_Never                                                                 |
| 12 |   -0.0336161   | pared_At least one parent has attained tertiary                              |
| 13 |   -0.0500042   | pared_Neither parent has attained upper secondary                            |
| 14 |    0.0547907   | b_q01b_Engineering, manufacturing and construction                           |
| 15 |   -0.140491    | b_q01b_General programmes                                                    |
| 16 |    0.186053    | b_q01b_Health and welfare                                                    |
| 17 |   -0.110284    | b_q01b_Humanities, languages and arts                                        |
| 18 |    0.0208533   | b_q01b_Science, mathematics and computing                                    |
| 19 |   -0.138746    | b_q01b_Services                                                              |
| 20 |   -0.00921516  | b_q01b_Social sciences, business and law                                     |
| 21 |    0.157079    | b_q01b_Teacher training and education science                                |
| 22 |   -0.539921    | leaver1624_Not in education, did not complete ISCED 3, aged 16 to 24         |
| 23 |    0.62975     | g_q04_Yes                                                                    |
| 24 |   -0.343033    | d_q03_The private sector (for example a company)                             |
| 25 |   -0.0724431   | d_q03_The public sector (for example the local government or a state school) |
| 26 |   -0.0535022   | g_q05e_Every day                                                             |
| 27 |    0.0610249   | g_q05e_Less than once a month                                                |
| 28 |    0.0544428   | g_q05e_Less than once a week but at least once a month                       |
| 29 |   -0.0425196   | g_q05e_Never                                                                 |
| 30 |    0.0986375   | d_q04_t_Employee, supervising fewer than 5 people                            |
| 31 |    0.248781    | d_q04_t_Employee, supervising more than 5 people                             |
| 32 |    0.00296429  | d_q09_A temporary employment agency contract                                 |
| 33 |    0.0628857   | d_q09_An apprenticeship or other training scheme                             |
| 34 |    0.132835    | d_q09_An indefinite contract                                                 |
| 35 |   -0.521933    | d_q09_No contract                                                            |
| 36 |    0.0733041   | d_q09_Other                                                                  |
| 37 |    0.0829767   | g_q05a_Every day                                                             |
| 38 |   -0.0931355   | g_q05a_Less than once a month                                                |
| 39 |    0.0578459   | g_q05a_Less than once a week but at least once a month                       |
| 40 |   -0.126261    | g_q05a_Never                                                                 |
| 41 |    0.0901094   | vet_True                                                                     |
| 42 |   -0.182817    | g_q08_Yes                                                                    |
| 43 |    0.129847    | b_q10a_Yes                                                                   |
| 44 |    0.0124907   | j_q04a_Yes                                                                   |
| 45 |    0.0453981   | d_q14_Extremely dissatisfied                                                 |
| 46 |    0.148551    | d_q14_Extremely satisfied                                                    |
| 47 |    0.112871    | d_q14_Satisfied                                                              |
| 48 |   -0.156307    | g_q05g_Every day                                                             |
| 49 |    0.0270132   | g_q05g_Less than once a month                                                |
| 50 |    0.00192066  | g_q05g_Never                                                                 |
| 51 |    0.12231     | computerexperience_Yes                                                       |
| 52 |    0.321902    | f_q07b_Yes                                                                   |
| 53 |   -0.10849     | g_q05d_Every day                                                             |
| 54 |   -0.0590609   | g_q05d_Less than once a week but at least once a month                       |
| 55 |    0.0951881   | g_q05d_Never                                                                 |
| 56 |   -0.161068    | d_q06b_Stayed more or less the same                                          |
| 57 |    0.0578826   | g_q06_Moderate                                                               |
| 58 |    0.0576696   | g_q06_Straightforward                                                        |
| 59 |   -0.0708934   | d_q12b_A lower level would be sufficient                                     |
| 60 |   -0.0614321   | d_q12b_This level is necessary                                               |
| 61 |    0.368032    | d_q06a_11 to 50 people                                                       |
| 62 |    0.703443    | d_q06a_251 to 1000 people                                                    |
| 63 |    0.589748    | d_q06a_51 to 250 people                                                      |
| 64 |    0.693836    | d_q06a_More than 1000 people                                                 |
| 65 |   -0.0191549   | g_q05c_Every day                                                             |
| 66 |   -0.161512    | g_q05c_Less than once a month                                                |
| 67 |    0.0592944   | g_q05c_Less than once a week but at least once a month                       |
| 68 |   -0.0453372   | g_q05c_Never                                                                 |
| 69 |   -0.00461924  | f_q07a_Yes                                                                   |
| 70 |   -0.0420853   | g_q05h_Every day                                                             |
| 71 |    0.0849324   | g_q05h_Less than once a month                                                |
| 72 |   -0.213333    | g_q05h_Never                                                                 |
| 73 |   -0.402679    | b_q10c_Not useful at all                                                     |
| 74 |   -0.0579116   | b_q10c_Somewhat useful                                                       |
| 75 |   -0.0328139   | b_q10c_Very useful                                                           |
| 76 |   -0.0897247   | d_q12c_1 to 6 months                                                         |
| 77 |    0.00245779  | d_q12c_3 years or more                                                       |
| 78 |   -0.066277    | d_q12c_7 to 11 months                                                        |
| 79 |   -0.221253    | d_q12c_Less than 1 month                                                     |
| 80 |   -0.0371234   | d_q12c_None                                                                  |
| 81 |    0.110397    | g_q05f_Every day                                                             |
| 82 |   -0.0965286   | g_q05f_Less than once a month                                                |
| 83 |    0.00459112  | g_q05f_Less than once a week but at least once a month                       |
| 84 |   -0.0468762   | g_q05f_Never                                                                 |
| 85 |   -0.0214164   | g_q07_Yes                                                                    |
| 86 |   -0.0550972   | edcat8_Post-secondary, non-tertiary (ISCED 4A-B-C)                           |
| 87 |   -0.128319    | edcat8_Primary or less (ISCED 1 or less)                                     |
| 88 |   -0.105555    | edcat8_Tertiary - bachelor/master/research degree (ISCED 5A/6)               |
| 89 |    0.0686286   | edcat8_Tertiary – bachelor degree (ISCED 5A)                                 |
| 90 |   -0.0615816   | edcat8_Tertiary – master degree (ISCED 5A)                                   |
| 91 |    0.128934    | edcat8_Tertiary – professional degree (ISCED 5B)                             |
| 92 |   -0.655697    | edcat8_Tertiary – research degree (ISCED 6)                                  |
| 93 |    0.0204709   | edcat8_Upper secondary (ISCED 3A-B, C long)                                  |
| 94 |    0.193856    | skill_1                                                                      |
| 95 |    0.123581    | skill_2                                                                      |
| 96 |    0.254882    | skill_3                                                                      |

\normalsize

Table: Lasso logistic regression for off-job training \label{log_reg_open}

\footnotesize
|    |   Coefficients | Feature                                                              |
|---:|---------------:|:---------------------------------------------------------------------|
|  0 |   -0.0129761   | age_r                                                                |
|  1 |    0.00472379  | j_q03b                                                               |
|  2 |    0.0450784   | yrsget                                                               |
|  3 |    0.0114224   | c_q09                                                                |
|  4 |    0.00774523  | c_q10a                                                               |
|  5 |    0.080179    | readytolearn                                                         |
|  6 |   -4.92742e-08 | earnmthallppp                                                        |
|  7 |    0.133852    | g_q05e_Every day                                                     |
|  8 |    0.0622688   | g_q05e_Less than once a month                                        |
|  9 |    0.0853484   | g_q05e_Less than once a week but at least once a month               |
| 10 |    0.12126     | g_q05e_Never                                                         |
| 11 |    0.275416    | edcat8_Post-secondary, non-tertiary (ISCED 4A-B-C)                   |
| 12 |   -0.0969094   | edcat8_Primary or less (ISCED 1 or less)                             |
| 13 |    0.278165    | edcat8_Tertiary – bachelor degree (ISCED 5A)                         |
| 14 |    0.217442    | edcat8_Tertiary – master degree (ISCED 5A)                           |
| 15 |    0.107415    | edcat8_Tertiary – professional degree (ISCED 5B)                     |
| 16 |   -0.237701    | edcat8_Tertiary – research degree (ISCED 6)                          |
| 17 |    0.0375319   | edcat8_Upper secondary (ISCED 3A-B, C long)                          |
| 18 |   -0.0351465   | gender_r_Male                                                        |
| 19 |   -0.147956    | g_q08_Yes                                                            |
| 20 |   -0.0917169   | j_q04a_Yes                                                           |
| 21 |    0.0454495   | g_q05a_Every day                                                     |
| 22 |   -0.0569056   | g_q05a_Less than once a month                                        |
| 23 |    0.0827699   | g_q05a_Less than once a week but at least once a month               |
| 24 |   -0.0152595   | g_q05a_Never                                                         |
| 25 |    0.102236    | g_q05f_Every day                                                     |
| 26 |   -0.0766345   | g_q05f_Less than once a week but at least once a month               |
| 27 |   -0.0269112   | g_q05f_Never                                                         |
| 28 |    0.447649    | computerexperience_Yes                                               |
| 29 |    0.260128    | f_q07b_Yes                                                           |
| 30 |    0.0246258   | b_q01b_Engineering, manufacturing and construction                   |
| 31 |   -0.0336862   | b_q01b_General programmes                                            |
| 32 |    0.222118    | b_q01b_Health and welfare                                            |
| 33 |   -0.0330549   | b_q01b_Humanities, languages and arts                                |
| 34 |    0.0886899   | b_q01b_Science, mathematics and computing                            |
| 35 |    0.0228378   | b_q01b_Social sciences, business and law                             |
| 36 |    0.127195    | b_q01b_Teacher training and education science                        |
| 37 |    0.156951    | d_q09_A temporary employment agency contract                         |
| 38 |    0.0109747   | d_q09_An indefinite contract                                         |
| 39 |   -0.239307    | d_q09_No contract                                                    |
| 40 |    0.225348    | d_q09_Other                                                          |
| 41 |    0.790455    | b_q10a_Yes                                                           |
| 42 |   -0.290733    | leaver1624_Not in education, did not complete ISCED 3, aged 16 to 24 |
| 43 |   -0.011474    | d_q12c_1 to 6 months                                                 |
| 44 |   -0.00826411  | d_q12c_3 years or more                                               |
| 45 |   -0.114519    | d_q12c_7 to 11 months                                                |
| 46 |   -0.233354    | d_q12c_Less than 1 month                                             |
| 47 |    0.0759839   | d_q12c_None                                                          |
| 48 |    0.0204918   | d_q13c_Every day                                                     |
| 49 |   -0.106941    | d_q13c_Less than once a month                                        |
| 50 |   -0.135916    | d_q13c_Less than once a week but at least once a month               |
| 51 |   -0.328951    | d_q13c_Never                                                         |
| 52 |    0.638       | g_q04_Yes                                                            |
| 53 |   -0.106537    | g_q05g_Every day                                                     |
| 54 |    0.0573156   | g_q05g_Less than once a month                                        |
| 55 |    0.0182027   | g_q05g_Less than once a week but at least once a month               |
| 56 |   -0.0842075   | g_q05g_Never                                                         |
| 57 |   -0.101545    | pared_At least one parent has attained tertiary                      |
| 58 |   -0.0464013   | pared_Neither parent has attained upper secondary                    |
| 59 |    0.110924    | d_q06a_11 to 50 people                                               |
| 60 |    0.278621    | d_q06a_251 to 1000 people                                            |
| 61 |    0.220498    | d_q06a_51 to 250 people                                              |
| 62 |    0.293571    | d_q06a_More than 1000 people                                         |
| 63 |    0.155299    | g_q07_Yes                                                            |
| 64 |    0.0832232   | g_q05d_Every day                                                     |
| 65 |   -0.105838    | g_q05d_Less than once a month                                        |
| 66 |    0.070324    | g_q05d_Less than once a week but at least once a month               |
| 67 |    0.0703497   | d_q06b_Increased                                                     |
| 68 |    0.0796499   | g_q05c_Every day                                                     |
| 69 |   -0.098999    | g_q05c_Less than once a month                                        |
| 70 |   -0.0739767   | g_q05c_Less than once a week but at least once a month               |
| 71 |   -0.22972     | g_q05c_Never                                                         |
| 72 |   -0.149715    | d_q14_Extremely dissatisfied                                         |
| 73 |    0.0511862   | d_q14_Extremely satisfied                                            |
| 74 |   -0.0127105   | d_q14_Neither satisfied nor dissatisfied                             |
| 75 |    0.00549697  | vet_True                                                             |
| 76 |    0.010915    | g_q05h_Every day                                                     |
| 77 |    0.00103673  | g_q05h_Less than once a month                                        |
| 78 |   -0.0284805   | g_q05h_Less than once a week but at least once a month               |
| 79 |   -0.372728    | g_q05h_Never                                                         |
| 80 |   -0.162708    | d_q03_The private sector (for example a company)                     |
| 81 |    0.0537657   | g_q06_Moderate                                                       |
| 82 |   -0.0106992   | g_q06_Straightforward                                                |
| 83 |   -0.0561683   | b_q10c_Not useful at all                                             |
| 84 |    0.404797    | b_q10c_Somewhat useful                                               |
| 85 |    0.0754157   | d_q04_t_Employee, supervising fewer than 5 people                    |
| 86 |    0.105143    | d_q04_t_Employee, supervising more than 5 people                     |
| 87 |   -0.119443    | d_q12b_A lower level would be sufficient                             |
| 88 |   -0.170284    | d_q12b_This level is necessary                                       |
| 89 |    0.114312    | f_q07a_Yes                                                           |
| 90 |    0.0914148   | skill_1                                                              |
| 91 |    0.000861359 | skill_2                                                              |

\normalsize

# References