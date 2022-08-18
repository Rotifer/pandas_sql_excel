# Introduction

## Objective

To teach SQL using the PostgreSQL dialect to analyse and manipulate a football data set.

## Why SQL

SQL is ubiquitous; it is used by all relational databases (Oracle, SQL Server, MySQL, DB2, SQLite, PostgreSQL, ...) and by an increasing number of newer _Big Data_ applications.
SQL is very powerful, scalable and relatively easy to learn.

## Why PostgreSQL

It is free, powerful, standards conformant, extensible and popular.


## The dataset 

I have compiled the football match results for thirty years of the English Premier League into a single table
using data provided by Kaggle and Wikipedia. I will also use other tables to later to introduce joins.


First 10 rows of the table

|  season   | match_date | home_club |    away_club     | home_club_score | away_club_score |
|-----------|------------|-----------|------------------|-----------------|-----------------|
| 1992-1993 | NULL       | Arsenal   | Aston Villa      | 0               | 1               |
| 1992-1993 | NULL       | Arsenal   | Blackburn Rovers | 0               | 1               |
| 1992-1993 | NULL       | Arsenal   | Chelsea          | 2               | 1               |
| 1992-1993 | NULL       | Arsenal   | Coventry City    | 3               | 0               |
| 1992-1993 | NULL       | Arsenal   | Crystal Palace   | 3               | 0               |
| 1992-1993 | NULL       | Arsenal   | Everton          | 2               | 0               |
| 1992-1993 | NULL       | Arsenal   | Ipswich Town     | 0               | 0               |
| 1992-1993 | NULL       | Arsenal   | Leeds United     | 0               | 0               |
| 1992-1993 | NULL       | Arsenal   | Liverpool        | 0               | 1               |
| 1992-1993 | NULL       | Arsenal   | Manchester City  | 1               | 0               |


### Some background

For those not familiar with football, here are some relevant points:

- What I refer to here as _football_ is frequently called _soccer_ in many countries.
- The English Premier League currently consists of 20 teams from England and Wales.
- Each club plays every other club twice in a season, once at their home ground and once at their oppentents home ground.
- The winner gets three points, the loser zero, and, if it is a draw, they each get a point.
- At the end of the season, the club with the most points wins the league.
- If two or more teams finish the season with two or more points, the team with the best __goal difference__ wins
- Goal difference is number of goals scored minus the number of goals conceded
- In the unlikey event that more two or more clubs have the have the seem points _and_ the same goal difference, the winner is the club with the highest number of goals scored.
- In the even more unlike event that clubs are still tied, the league is decided by a play-off game between them.
- Each season the bottom three clubs are relegated from the Premier League and replaced by the top three clubs from the next tier of English football called _The Championship_.
- This club relegation/promotion each season, ensures that the Premier League is constantly changing.
- The season normally begins in mind August and finishes in mid May of the following calendar year.

## The teaching approach used

Like most people, I learn best by doing. I like to intersperse theoretical discussions of concepts with working code that demonstrates those concepts. In this book, I introduce a topic with some background discussion and then set exercises for the you, the reader to complete. I provide a solution and a discussion but to truly learn SQL, you should try your best to do the exercises yourself and then check them against the solution I provide. The exercises start at a very basic level annd then proceed to  more advanced topics. By the end of book, you should have a good grasp of SQL

## What this book doesn't teach

The emphasis here is on _analytical_ SQL, that is using SQL to answer specific questions about the data. SQL can also be used to do many other things such as create, update, and delete data. These three operations contribute the _C_, _U_ and _D_ letters to the _CRUD_ acronym but the emphasis here is on the _R_ in _read_ part. All discussion of the very important topic of database design is omitted. 

