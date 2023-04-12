library(rvest)
library(tidyverse)

url3 <- "https://www.amazon.com/gp/bestsellers/2021/books/ref=zg_bsar_cal_ye"

book_names <- url3 %>%
  read_html() %>%
  html_nodes("div._cDEzb_p13n-sc-css-line-clamp-1_1Fn1y") %>%
  html_text2() %>%
  head(10)
 
author_name <- url3 %>%
  read_html() %>%
  html_nodes("a.a-link-child") %>%
  html_text2() %>%
  head(10)

book_stars <- url3 %>%
  read_html() %>%
  html_nodes(".a-icon-row") %>%
  html_text2() %>%
  head(10) 

book_prices <- url3 %>%
  read_html() %>%
  html_nodes("div._cDEzb_p13n-sc-price-animation-wrapper_3PzN2") %>%
  html_text2() %>%
  head(10) 
BestSellerbook_2021 <- data.frame(
  book_names,
  author_name,
  book_stars,
  book_prices
)
view(BestSellerbook_2021)
