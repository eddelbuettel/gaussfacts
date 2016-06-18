
data <- read.csv("posts.csv", sep=";",
                 col.names=c("pid","userid","username","gender","story","category",
                             "email","time_added","date_added","active","vote_yes","vote_no",
                             "last_viewed","mod_yes","mod_no","pip","pip2","short"),
                 stringsAsFactors=FALSE)

data <- data[, c("pid", "story", "vote_yes", "vote_no")]

data <- data[ data[,"vote_yes"] - data[,"vote_no"] > 5, ]

## cf http://stackoverflow.com/questions/5060076/
unescapehtml <- function(str) xml2::xml_text(xml2::read_html(paste0("<x>", str, "<x>")))

n <- nrow(data)
for (i in 1:n) data[i, "story"] <- unescapehtml(data[i, "story"])

print(summary(data))
write.csv(data, file="gaussfacts.csv", row.names=FALSE)
