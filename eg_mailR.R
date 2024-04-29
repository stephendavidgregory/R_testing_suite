# set up "app password" with Gmail - see https://support.google.com/mail/answer/185833?hl=en-GB

# GMAIL_USERNAME and GMAIL_PASSWORD are stored in .Renviron

library(mailR)
send.mail(from = "stephendavidgregory@gmail.com",
          to = "stephen.gregory@cefas.gov.uk",
          subject = "test",
          body = "test",
          encoding = "utf-8",
          smtp = list(host.name = "smtp.gmail.com", port = 465,
                      user.name = Sys.getenv("GMAIL_USERNAME"),
                      passwd = Sys.getenv("GMAIL_PASSWORD"), ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)
