# set up "app password" with Gmail - see https://support.google.com/mail/answer/185833?hl=en-GB

# GMAIL_USERNAME and GMAIL_PASSWORD are stored in .Renviron

library(emayili)
smtp <- server(host = "smtp.gmail.com",
               port = 587,
               username = Sys.getenv("GMAIL_USERNAME"),
               password = Sys.getenv("GMAIL_PASSWORD"))
email <- envelope(from = "stephendavidgregory@gmail.com",
                  to = "stephen.gregory@cefas.gov.uk",
                  subject = "test",
                  text = "test")
smtp(email)
