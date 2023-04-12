library(rvest)
library(tidyverse)

url <- "https://www.imdb.com/list/ls004499891/"

tvshow_Name <- url %>% 
  read_html() %>%
  html_nodes("h3.lister-item-header") %>%
  html_text2()

rating <- url %>%
  read_html() %>%
  html_nodes("div.ipl-rating-star.small") %>%
  html_text2() %>%
  as.numeric()

vote <- url %>%
  read_html() %>%
  html_nodes("p.text-muted.text-small") %>%
  html_text2() %>%
  head(100)

best_tvshow <- data.frame(
  tvshow_Name,
  rating,
  vote
)
view(best_tvshow)
