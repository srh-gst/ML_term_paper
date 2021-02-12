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

What is the topic of your dissertation? What were the reasons for choosing this topic? What is your research hypothesis? How do you define the central terms of your hypothesis? Why and for whom is it important to answer these questions?

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

Digitalization has 

@becker1962investment distinguished between two kinds of on-the-job training: specific and general. Specific training increases the marginal product of a worker within one specific firm while general training increases her productivity in many other firms. In a perfect labor market workers are paid their marginal product. In such case, firms would not invest into general training of their employees as they could leave the firm and look for a better paid job. Instead, workers would pay for their general training as an investment into higher future wages. @acemoglu1999beyond argue that firms still invest in general training due to their monopsony power. Wages increase by less than the marginal productivity and firms can profit. @konings2015impact find that an increase in the share of trained work-ers by 10 percentage points raises the productivity by 1.7 to 3.2 percent while wages only increase by 1.0 to 1.7 percent. 

Evidence on job mobility behaviour of workers is more mixed. @zweimuller2003job findings support @becker1962investment human capital theory. Workers who received firm specific training quit less often and show less job searching behaviour. Workers who received general training increased their job searching activities and quit more often. @dietz2020retention use German employer-employee data and find that training increases the retention probability. These studies focus on on-the-job training. 

@lynch1991role and @lynch1992private compares on-the-job to off-the-job training. She focuses on young workers that are particularly mobile. She finds that on-the job training tends to be firm specific in the US and thus wage raises cannot be taken along to subsequent employers. Off-the-job training by proprietary institution have little effect on wages in the current employment but raise future expected wages in subsequent employment. @lynch1991role shows that the probability of leaving an employer varies with respect to race, gender, and educational level. Workers with disabilities, black workers and workers with a high school degree or less increased the probability of leaving the first employer. Working in a job with collective agree-ment or having a college degree decreased their probability of leaving the employer. The effect of training, disability, and education disappears when @lynch1991role re-estimates the equation only for men, while these effects are particularly strong for women. 

Applying a machine learning approach permits us to take a broader approach on this topic. Instead of restricting our estimation to a specific group of workers or countries, we identify the factors that drive the probability of leaving-a-job and job-switching from a set of ## variables.



<!---

What is the crucial literature about the topic? What are the open research questions? How does the research hypothesis relate to the existing literature on the topic? Are there other dissertations that cover the same topic?

- Discuss relevant literature.
- Do not start with Adam Smith (unless you are discussing his work).
- Focus on articles in journals, avoid textbooks.
- Try to find the “frontier”—what are the unsolved questions?
--->

# Data

What is the epistemological framework of the dissertation? For empirical studies it should be made clear: Why were the specific methods of data analysis chosen? How was the data acquired?

To explore these questions the results of the survey of the Programme for the International Assessment of Adult Competencies (PIAAC) are used (@GESISLeibnizInstitutefortheSocialSciences.12.02.2021). The survey was conducted by the Organisation for Economic Co-operation and Development (OECD) with the goal to assess which skills adults need to manage challenges and tasks at work as well as in thier personal life. The study targeted explicitly the skills in literacy, numeracy and adaptive problem solving while also comprising comprehensive background information on the respondents past and current education, subjective assessments of their skills and job requirements as well as information on migration (@GESISLeibnizInstitutefortheSocialSciences.12.02.2021). The first cycle began in 2011/12 covering 40 countries and about 5,000 adults who were between 16 and 65 years old and who were selected at random. The second cycle started in 2018 and results are to be expected in 2022 (@GESISLeibnizInstitutefortheSocialSciences.12.02.2021). 

For the study at hand the results of the first wave are used in a reduced form. The original dataset comprises 1460 columns but to answer the resarch question of this paper the dataset is reduced such that it allows to focus on the indiviual's background information, her past and ongoing formal or informal education, her ICT skills, her job requirements, information on her last job, reasons to resign and information on monthly income. In total 107 variables are kept in the dataset including indices.

- Name, source, unit, time, structure, number of observations, relevant population.
- Definition of (main) sample.
- Definition and characteristics of key variables.
- Limitations and potential biases.
- Provide the data and the software code (replication).
- Plot the main empirical associations you want to study!
- Do NOT assume the reader knows anything about these data

# Model and Methods

- Describe how the hypothesis is linked to your estimation.
- Describe the estimation using equations.
- Discuss the parameters and variables.
- What are the identifying assumptions, what are (possible) violations and their consequences?
- What will you do about this?

# Results 

- Tell a story!
- Guide the reader.
- Focus on the key points, not the details.
- Discuss quality and quantity.
- Discuss problems.
- Compare to the literature.

# Further steps 

Which results can be expected? What is new? Where lies the progress for science? In what way can scientific discussion proceed / be stimulated by the thesis?

# References