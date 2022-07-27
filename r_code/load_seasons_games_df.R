library(DBI)
library(tidyverse)

epl_30_seasons_1992_2022 <- readr::read_delim(file.path(Sys.getenv("HOME"), "SHARED_DATA", "epl_games_seasons_1992-93_to_2021-22.txt"), delim="\t")
con <- dbConnect(RPostgres::Postgres(),dbname = 'epl', 
                 host = '127.0.0.1', # i.e. 'ec2-54-83-201-96.compute-1.amazonaws.com'
                 port = 5432, # or any other port specified by your DBA
                 user = 'mfm45656',
                 password = '')
DBI::dbWriteTable(con, "epl_matches", epl_30_seasons_1992_2022, overwrite=TRUE, field.types = c(season="TEXT", 
                                                                                                match_date="DATE",
                                                                                                home_club="TEXT",
                                                                                                away_club="TEXT",
                                                                                                home_club_score="INTEGER",
                                                                                                away_club_score="INTEGER"))
DBI::dbDisconnect(con)