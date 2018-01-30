
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
