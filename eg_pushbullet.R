library(RPushbullet)

msg <- 'It works!'
pbPost(type = 'note', title = 'A Simple Test', body = msg)

pbPost(type = 'link', title = 'Nice Website', 
       url = 'https://www.gwct.org.uk/research/staff/fisheries/sgregory/')
