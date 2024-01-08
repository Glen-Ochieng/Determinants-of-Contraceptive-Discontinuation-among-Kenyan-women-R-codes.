
library (survival)
library (survminer)
library (ggplot2)

#1. Education level
kp.meier.est<-survfit(surv_data~education_level)
ggsurvplot(kp.meier.est,data = svl_dataset,xlim=c(0,36),xlab="Survival time(0-36 months)",
           legend.labs=c("Never","Primary","Post-primary","Secondary","College/University"),
           pval = T, ggtheme=theme_linedraw())




#2. Marital status
kp.meier.est<-survfit(surv_data~Marital_status)
ggsurvplot(kp.meier.est,data = svl_dataset,xlim=c(0,36),xlab="Survival time(0-36 months)",pval = T,
           legend.labs=c("Married","Unmarried"),ggtheme=theme_linedraw())

#3. County
#I used a sub-dataset for this variable 
surv_data<-Surv(svl_dataset$event_duration,svl_dataset$discont)
attach(svl_dataset)
kp.meier.est<-survfit(surv_data~ svl_dataset$County)
ggsurvplot(kp.meier.est,data = svl_dataset,xlim=c(0,36),
           legend.labs=c("Bungoma","Kakamega","Kericho","Kiambu","Kilifi","Kitui","Nairobi","Nandi","Nyamira","Siaya","West-Pokot"),xlab="Survival time(0-36 months)",pval = T, ggtheme=theme_linedraw())

#4. Age
surv_data<-Surv(event_duration,discont)
kp.meier.est<-survfit(surv_data~Age_Group)
ggsurvplot(kp.meier.est,data = new_svl_dataset,xlim=c(0,36),legend.labs=c("Age-Group 15-19","Age-Group 20-24","Age-Group 25-29","Age-Group 30-34","Age-Group 35-39","Age_Group 40-44","Age 45-49"),xlab="Survival time(0-36 months)",pval = T,ggtheme=theme_linedraw())

#5. Wealth
kp.meier.est<-survfit(surv_data~wealthtertile_Kenya)
ggsurvplot(kp.meier.est,data = svl_dataset,xlim=c(0,36),legend.labs=c("Lower tertile","Medium tertile","Higher tertile"),xlab="Survival time(0-36 months)",pval = T,ggtheme=theme_linedraw())


#6. Contraceptive
surv_data1<-Surv(svl_dataset$event_duration,
                 svl_dataset$discont)
kp.meier.est<-survfit(surv_data1~ svl_dataset$method_string)
ggsurvplot(kp.meier.est,data = svl_dataset,xlim=c(0,36),legend.labs=c("EC","Injectables","LAM","Other methods","Withdrawal","Implant","IUD","Male Condom","Pill"),xlab="Survival time(0-36 months)",
           pval = T,ggtheme=theme_linedraw())
#7.ur
surv_data<-Surv(svl_dataset$event_duration,svl_dataset$discont)
kp.meier.est<-survfit(surv_data~ svl_dataset$ur)
ggsurvplot(kp.meier.est,data = new_svl_dataset,xlim=c(0,36),legend.labs=c("Urban","Rural"),
           pval = T,ggtheme=theme_linedraw())
