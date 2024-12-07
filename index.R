#https://albert-rapp.de/posts/ggplot2-tips/19_example_charts/19_example_charts
library(gapminder)
gapminder::gapminder |> 
  filter(year == 2007) |> 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point(
    aes(color = continent, size = pop), 
    alpha = 0.8 
  ) +
  theme_minimal(base_size = 18, base_family = "Source Sans Pro") +
  theme(
    panel.grid.minor = element_blank()
  ) +
  labs(
    x = 'GDP per Capita (in USD)',
    y = 'Life Expectancy (in years)',
    title = "Life Expectancies and GDP per Capita in 2007",
    color = 'Continent',
    size = 'Population'
  ) +
  guides(size = guide_none())
##

g <-as.data.frame(gapminder)
gapminder::gapminder |> 

#####
gapminder::gapminder |>
  filter(continent == "SSA" | continent=="EAP") %>% #filter 
  ggplot(aes(lifeExp,fill=continent)) + #plot
  geom_boxplot() +
  theme_classic() + 
  geom_hline(yintercept=0, linetype="dashed", color = "black")
# https://albert-rapp.de/posts/ggplot2-tips/19_example_charts/19_example_charts
gapminder::gapminder |> 
  filter(year == 2007) |> 
  ggplot(aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
#scale_x_sqrt ()
#  scale_x_log10 ()
# scale_x_reverse()
coord_cartesian(xlim=c(2000,50000),
                ylim=c(40,90),
                clip="off")
##
gapminder::gapminder |> 
  filter(year == 2007) |> 
  ggplot(aes(x = gdpPercap,fill="continent")) +
  geom_histogram() 

gapminder::gapminder |> 
   filter(year == 2007) |> 
  ggplot(aes(x = gdpPercap,fill=continent)) +
  geom_histogram()+
facet_wrap(~continent)
####
gapminder::gapminder %>% 
   filter(continent=="Asia"|continent=="Europe") %>%
  ggplot(aes(lifeExp,fill=continent))+
  geom_boxplot()
