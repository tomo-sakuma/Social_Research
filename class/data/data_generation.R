
##Exam
hschool = trunc(runif(500,2,10)) 
gpa = round(hschool*0.2*runif(500, 0.5, 4),digits = 2)
exam = trunc(hschool*20+runif(500,100,400))



kadai_8th <- tibble(hschool,exam,gpa)


kadai_8th %>% 
  cor() -> cor5_1

cor5_1

kadai_8th$hschool <- replace(kadai_8th$hschool, kadai_8th$hschool <= 0, 1) 
kadai_8th$hschool <- replace(kadai_8th$hschool, kadai_8th$hschool > 10, 10) 

write_csv(kadai_8th,'class/data/kadai_8th.csv')


