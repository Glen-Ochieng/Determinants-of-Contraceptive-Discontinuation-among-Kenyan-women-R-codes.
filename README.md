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
