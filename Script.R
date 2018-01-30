
# to run in shell - git config --global user.email "dane.hager@gmail.com"
# to run in shell - git config --global user.name "Dane Hager"

library(gapminder)
install.packages("gapminder")
gapminder
gapminder_us <- gapminder %>% 
  filter(country=="United States") %>% 
  arrange(desc(year))
ggplot(data=gapminder_us) +
  geom_point(mapping=aes(x=year, y=lifeExp))
gapminder %>% 
  count(country)


ggplot(data = gapminder_2007) +
  geom_histogram(mapping = aes(x = lifeExp), binwidth = 2.5)
gapminder_recent <- gapminder %>% 
  filter(year>=1980)

gapminder_2007 <- gapminder %>% 
  filter(year==2007)
