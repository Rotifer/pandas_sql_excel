/*
Different names used for the club. These scripts resolve the club names to one "canonical" name.
*/

CREATE VIEW vw_club_names AS
SELECT
  home_club club_name
FROM
  epl_matches
UNION
SELECT
  away_club
FROM
  epl_matches;
  
SELECT * FROM public.vw_club_names ORDER BY 1;


UPDATE epl_matches SET home_club = 'Blackburn Rovers' WHERE home_club ='Blackburn';
UPDATE epl_matches SET home_club = 'Bolton Wanderers' WHERE home_club ='Bolton';
UPDATE epl_matches SET home_club = 'Bradford City' WHERE home_club ='Bradford';
UPDATE epl_matches SET home_club = 'Cardiff City' WHERE home_club ='Cardiff';
UPDATE epl_matches SET home_club = 'Charlton Athletic' WHERE home_club ='Charlton';
UPDATE epl_matches SET home_club = 'Coventry City' WHERE home_club ='Coventry';
UPDATE epl_matches SET home_club = 'Derby County' WHERE home_club ='Derby';
UPDATE epl_matches SET home_club = 'Huddersfield Town' WHERE home_club ='Huddersfield';
UPDATE epl_matches SET home_club = 'Ipswich Town' WHERE home_club ='Ipswich';
UPDATE epl_matches SET home_club = 'Leeds United' WHERE home_club ='Leeds';
UPDATE epl_matches SET home_club = 'Leeds United' WHERE home_club ='Leeds Utd';
UPDATE epl_matches SET home_club = 'Leicester City' WHERE home_club ='Leicester';
UPDATE epl_matches SET home_club = 'Manchester City' WHERE home_club ='Man City';
UPDATE epl_matches SET home_club = 'Manchester United' WHERE home_club ='Man United';
UPDATE epl_matches SET home_club = 'Manchester United' WHERE home_club ='Man Utd';
UPDATE epl_matches SET home_club = 'Middlesbrough' WHERE home_club ='Middlesboro';
UPDATE epl_matches SET home_club = 'Newcastle United' WHERE home_club ='Newcastle';
UPDATE epl_matches SET home_club = 'Norwich City' WHERE home_club ='Norwich';
UPDATE epl_matches SET home_club = 'Queens Park Rangers' WHERE home_club ='QPR';
UPDATE epl_matches SET home_club = 'Sheffield United' WHERE home_club ='Sheffield Utd';
UPDATE epl_matches SET home_club = 'Tottenham Hotspur' WHERE home_club ='Spurs';
UPDATE epl_matches SET home_club = 'Tottenham Hotspur' WHERE home_club ='Tottenham';
UPDATE epl_matches SET home_club = 'West Ham United' WHERE home_club ='West Ham';
UPDATE epl_matches SET home_club = 'Wolverhampton Wanderers' WHERE home_club ='Wolves';
UPDATE epl_matches SET home_club = 'Brighton & Hove Albion' WHERE home_club ='Brighton';

UPDATE epl_matches SET away_club = 'Blackburn Rovers' WHERE away_club ='Blackburn';
UPDATE epl_matches SET away_club = 'Bolton Wanderers' WHERE away_club ='Bolton';
UPDATE epl_matches SET away_club = 'Bradford City' WHERE away_club ='Bradford';
UPDATE epl_matches SET away_club = 'Cardiff City' WHERE away_club ='Cardiff';
UPDATE epl_matches SET away_club = 'Charlton Athletic' WHERE away_club ='Charlton';
UPDATE epl_matches SET away_club = 'Coventry City' WHERE away_club ='Coventry';
UPDATE epl_matches SET away_club = 'Derby County' WHERE away_club ='Derby';
UPDATE epl_matches SET away_club = 'Huddersfield Town' WHERE away_club ='Huddersfield';
UPDATE epl_matches SET away_club = 'Ipswich Town' WHERE away_club ='Ipswich';
UPDATE epl_matches SET away_club = 'Leeds United' WHERE away_club ='Leeds';
UPDATE epl_matches SET away_club = 'Leeds United' WHERE away_club ='Leeds Utd';
UPDATE epl_matches SET away_club = 'Leicester City' WHERE away_club ='Leicester';
UPDATE epl_matches SET away_club = 'Manchester City' WHERE away_club ='Man City';
UPDATE epl_matches SET away_club = 'Manchester United' WHERE away_club ='Man United';
UPDATE epl_matches SET away_club = 'Manchester United' WHERE away_club ='Man Utd';
UPDATE epl_matches SET away_club = 'Middlesbrough' WHERE away_club ='Middlesboro';
UPDATE epl_matches SET away_club = 'Newcastle United' WHERE away_club ='Newcastle';
UPDATE epl_matches SET away_club = 'Norwich City' WHERE away_club ='Norwich';
UPDATE epl_matches SET away_club = 'Queens Park Rangers' WHERE away_club ='QPR';
UPDATE epl_matches SET away_club = 'Sheffield United' WHERE away_club ='Sheffield Utd';
UPDATE epl_matches SET away_club = 'Tottenham Hotspur' WHERE away_club ='Spurs';
UPDATE epl_matches SET away_club = 'Tottenham Hotspur' WHERE away_club ='Tottenham';
UPDATE epl_matches SET away_club = 'West Ham United' WHERE away_club ='West Ham';
UPDATE epl_matches SET away_club = 'Wolverhampton Wanderers' WHERE away_club ='Wolves';
UPDATE epl_matches SET away_club = 'Brighton & Hove Albion' WHERE away_club ='Brighton';