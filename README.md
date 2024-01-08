# My-Fourth-Year-Project-
For my fourth year project, I together with three of my classmates used some of the codes in this reposirtory. The project was Contraceptive Discontinuation among Kenyan women: A Survival Analysis Study.

***Assumptions for this study were as follows***
1. Each partcipant was assumed to be using one contraceptive at a time.
2. Once a participant discontinued the contraceptive they were on, they were regarded as censored.

The variables considered were as follows:
Independent variables: Age, Contraceptive method currently used, Residence of the particpants( Urban or rural), Wealth tertile (Higher, Medium, Lower), Parity, Marital status, Education Level  


## 1. Event histogram 
We choose a histogram to demonstrate the concentration of the variable of interest- time to contraceptive discontinuation. The visual answers the question, "At each study month how many women discontinued the particular contraceptive they had?"

## 2. Event times bragraphs 
So next we wanted to visualize the contraceptive discontinuation times per exploratoty variable across time. For ease interpretation, we stratified the time (months from 2019 to 2022)  into "1-12 months", "13-24 months" and "15-36 months".
The theme scale_fill_simpsons() was selected because it had 11 unique colours while others had 8 or 9 less, thus it could handle larger classes.
Also since bargraphs work well with string categorical variables i.e. sex (male,female), most of the numeric variables were converted to string. Various methods exist to perform that tasks such as decoding, "tostring" in Stata or generating string variables conditional on if statements e.g."If gender=2, gender_string[i] = Female". Whichever works for you.

## 3. Survival curves 
This being a survival analysis study, it was inevitable that we meet something to do with Kaplain Meier Curves. 
Kaplain Meier curves were drawn for each variable with the p-value of the logrank test superimposed onto the plots.

## 4. Log rank test 
In the previous chapter we superimposed the results of the log rank test but the codes to perform this tests are in the above named folder.

## 5. Cox proportional hazard test
Each level of every covariate was compared to a reference level to determine how much greater or less at risk they are. 



