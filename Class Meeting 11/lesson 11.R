#I was very lost throughout this entire lesson. 

library(tidyverse)
library(gapminder)

#Export to CSV
gapminder
write_csv(gapminder, './gapminder.csv')

#below to see gapminder as csv
View(gapminder)

#Calculate mean Life Exp per continent 
gapminder_sum = gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_lifeExp = mean(lifeExp))

view(gapminder_sum)
write_csv(gapminder_sum, './gapminder_sum.csv')

gapminder_sum %>% 
  ggplot(aes(x = continent, 
             y = ave_lifeExp)) +
  geom_point()+
  theme_bw()

rm(hair)
rm(hair_eye)
rm(apminder_sum)

library("tidyverse")
library("here")
ls()

# here :: here() - is a replacement for slashes
# to load csvs  - read_csv('./test/gapminder_sum.csv') or
# write_csv(here : : here("test", "gapminder_sum.csv"))


## Read Excel file 

### Datafiles fromt his tutorial 

data_url = "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

#read_csv can directly import urls but read_excel requires you to first download it. 


download.file(url = data_url, 
              destfile = here :: here("GreatestGivers.xls"))

find out where your files are getting put....
here :: here()

              
file_name = basename(data_url)
#basename - base r function extarcts name of file into url - 

library(readxl) # to load in excel files
#assign import data to tibble

philanthropists = read_excel(here::here("datasets", file_name), trim_ws = TRUE)
#this does not work, trim_ws means you trim white space 

view(philanthropists)



