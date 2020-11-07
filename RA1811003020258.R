library(robotstxt)
path<-paths_allowed("https://www.amazon.in/s?k=mobiles+under+20000+rupees&crid=CE8I23PIW1TP&sprefix=mobiles+under+20000%2Caps%2C339&ref=nb_sb_ss_ts-oa-p_1_19")
library(rvest)
link<-"https://www.amazon.in/s?k=mobiles+under+20000+rupees&crid=CE8I23PIW1TP&sprefix=mobiles+under+20000%2Caps%2C339&ref=nb_sb_ss_ts-oa-p_1_19"
web<-read_html(link)
library(dplyr)
mobile_name<-web%>%html_nodes(".a-color-base.a-text-normal")%>%html_text()
mobile_cost<-web%>%html_nodes(".a-price-whole")%>%html_text()
View(mobile_name)
View(mobile_cost)
best_mobiles<-data.frame(mobile_name,mobile_cost)

