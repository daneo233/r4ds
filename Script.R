library(gapminder)
install.packages("gapminder")
gapminder
gapminder %>% 
  filter(country=="United States") %>% 
  arrange(desc(year))
ggplot(gapminder) %>% 
  geom_line(aes(x=year, y=lifeExp))
