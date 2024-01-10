
#Education level
ggplot(data=svl_dataset,aes(cattimes_string,fill=education_level_string))+geom_bar(position = "dodge")+ labs(x='Duration of contraceptive use',y="Frequency",fill="Education Level")+theme_bw() +
  scale_fill_simpsons()

#Marital status
ggplot(data=svl_dataset,aes(cattimes_string,fill=marital_status))+ geom_bar(position = "dodge")+
  labs(x='Duration of contraceptive use',y="Frequency",fill="Marital Status")+theme_bw()+
  scale_fill_simpsons()

#County
ggplot(data=svl_dataset,aes(cattimes_string,fill=level1))+ geom_bar(position = "dodge")+
  labs(x='Duration of contraceptive use',y="Frequency",fill="County")+theme_bw()+
  scale_fill_simpsons()

#Age
ggplot (data=glen_contraceptive1_new_svl_dataset,aes(cattimes_string,fill=Age_Group_string))+
  geom_bar(position = "dodge")+ labs(x='Duration of contraceptive use',y="Frequency",fill="Age-Group")+theme_bw()+ scale_fill_simpsons()

#Wealth
ggplot(data=svl_dataset,aes(cattimes_string,fill=wealth_string))+ geom_bar(position = "dodge")+
  labs(x='Duration of contraceptive use',y="Frequency",fill="Wealth tertile")+theme_bw()+
  scale_fill_simpsons()

#Contraceptive method
ggplot(data=svl_dataset,aes(cattimes_string,fill=method_string))+
  geom_bar(position = "dodge")+
  labs(x='Duration of contraceptive use',y="Frequency",fill="Contraceptive")+theme_bw()+
  scale_fill_simpsons()

#urbanization/residence
ggplot(data=svl_dataset,aes(cattimes_string,fill=ur_string))+ geom_bar(position = "dodge")+ labs (x='Duration of contraceptive use',y="Frequency",fill="Residence")+theme_bw()+ scale_fill_simpsons()