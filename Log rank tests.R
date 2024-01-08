library (survival)
library (survminer)

#1. Education level
surv_diff <- survdiff(Surv(event_duration,discont) ~education_level_string , data = svl_dataset)
surv_diff

#2. Marital status
surv_diff <- survdiff(Surv(event_duration,discont) ~Marital_status_string , data = svl_dataset)
surv_diff

#3. County
surv_diff <- survdiff(Surv(event_duration,discont) ~level1 , data = svl_dataset)
surv_diff

#4. Age
surv_diff <- survdiff(Surv(event_duration,discont) ~Age_Group_string , data = svl_dataset)
surv_diff

#5. Wealth
surv_diff <- survdiff(Surv(event_duration,discont) ~wealth_string , data = svl_dataset)
surv_diff

#6. Contraceptive
surv_diff <- survdiff(Surv(event_duration,discont) ~method_string , data = svl_dataset)
surv_diff

#7.ur
surv_diff <- survdiff(Surv(svl_dataset$event_duration,svl_dataset$discont) ~ ur , data =svl_dataset)