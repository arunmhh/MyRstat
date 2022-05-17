Exp1
Exp1 %>% group_by(Treatment) %>%
  summarise(mean = mean(Cells),sd = sd(Cells)/sqrt(n()),
            max = mean+sd,
            min = mean-sd) -> CDD


CDD %>% ggplot(mapping = aes(x = Treatment, y = mean, ymin=min, ymax= max, fill= Treatment))+
  geom_errorbar(width= 0.3)+
  geom_col()+
  labs(x= NULL, y= "Dose Response")+ 
  scale_x_discrete(labels=c("Control","Drug 1","Drug2"))+
  theme_classic()+ theme(legend.position = "bottom") +labs(title = "Drug Case Study")+
  theme(plot.title = element_text(hjust = 0.5, face = "bold", color = "aquamarine3",size = 30))

ggsave("CDDbarplot.jpg", width= 10, Height= 10)
  