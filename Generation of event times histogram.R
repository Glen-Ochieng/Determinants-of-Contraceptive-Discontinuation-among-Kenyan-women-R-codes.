##The obvious initial step is to load in the dataset which I named the svl_dataset. It was a in Stata format thus for importation,
## the package haven was instrumental.

library(ggplot2)
ggplot(data=svl_dataset,aes(event_duration))+ geom_histogram(fill="cyan4")+  labs(x ="Duration of contraceptive use (months)", y="Frequency")+ theme_bw()
