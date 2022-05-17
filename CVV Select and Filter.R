CVV <- read.csv("https://covid.ourworldindata.org/data/owid-covid-data.csv")
CVV %>% 
  filter(location == "Germany") %>%
  select(matches("vacc.*per_hundred")) %>% colnames()

CVV %>% 
  filter(location == "Germany") %>%
  select(location, date,
         all_vacc = people_vaccinated_per_hundred,
         fully_vacc = people_fully_vaccinated_per_hundred)  %>% tail()

##### only select ######

CVV <- read.csv("https://covid.ourworldindata.org/data/owid-covid-data.csv") %>%
  select(location, date,
         all_vacc = people_vaccinated_per_hundred,
         fully_vacc = people_fully_vaccinated_per_hundred)


###### Filter with rows##### even filter work with coloumns really good #####

CVV %>% filter (date == "2021-11-11") %>% filter(fully_vacc < 50) %>% view

CVV %>%
  filter(location == "United States")
CVV %>%
  filter (date == "2021-11-11" & location == "Germany")



CVV %>%
  filter((location == "Germany"| location == "India") & date == "2021-11-11")%>%
  drop_na(fully_vacc)


CVV %>% 
  mutate(above_half = fully_vacc >50) %>% 
  filter(above_half & date == "2021-11-11") 
%>% count(location)
 
CVV %>% filter(!is.na(fully_vacc))

CVV <- read.csv("https://covid.ourworldindata.org/data/owid-covid-data.csv") %>%
  select(location, date,
         all_vacc = people_vaccinated_per_hundred,
         fully_vacc = people_fully_vaccinated_per_hundred) %>%
  filter((location == "Australia" | location == "Brazil"| 
            location == "Canada"| location == "China"| 
            location == "France"| location == "Germany"| 
            location == "India"| location == "Italy"|
            location == "Japan"| location == "Mexico"| 
            location == "South Africa"| location == "South Korea"| 
            location == "Spain"| location == "United kingdom"
          | location == "United States") & date == "2021-11-10")


CVV %>% arrange(fully_vacc) %>% drop_na()

CVV %>% arrange(desc(fully_vacc)) %>% drop_na()

CVV %>% arrange(desc(location)) 
%>% drop_na()
