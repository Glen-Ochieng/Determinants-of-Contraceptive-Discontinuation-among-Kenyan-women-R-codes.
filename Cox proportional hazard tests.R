library (survival)
library (survminer)

#1. Education level

res.cox <- coxph(Surv(event_duration,discont) ~education_level, data = svl_dataset)
res.cox
summary(res.cox) #checks model validity

#sometimes to a table of the summary is more visualy appealing. To get table try 
#out this packages and codes.
library(sjPlot)
tab_model (res.cox)

library(tab)
tabcoxph (res.cox)

#2. Marital status
res.cox <- coxph(Surv(event_duration,discont) ~marital_status , data = svl_dataset)
res.cox
summary(res.cox)
tabcoxph(res.cox)

#3. County
res.cox <- coxph(Surv(event_duration,discont) ~level1 , data = svl_dataset)
res.cox
summary(res.cox)
tabcoxph(res.cox)


#4. Age
res.cox <- coxph(Surv(event_duration,discont) ~Age_Group_string , data = svl_dataset)
res.cox
summary(res.cox)
tabcoxph(res.cox)
summary(res.cox)

#5. Wealth
res.cox <- coxph(Surv(event_duration,discont) ~wealth_string , data = svl_dataset)
res.cox
summary(res.cox)
tabcoxph(res.cox)

#6. Contraceptive
res.cox <- coxph(Surv(svl_dataset$event_duration,svl_dataset$discont) ~method_string ,data = svl_dataset)
res.cox
summary(res.cox)
tabcoxph(res.cox)


