NBA MVP Metric
==============
By Christopher Vela and Daniel Schwartz

Introduction
===============
At the end of each season, the National Basketball Association designates the most valuable player
(MVP) based on a voting system whereby broadcasters and journalists rank the ﬁve best performing players. Points are then assigned inversely with rank for each ballot cast. The rank-point
equivalencies are as follows:

<b><center>rank for a given ballot points</b>

1st 10

2nd 7

3rd 5

4th 3

5th 1
</b></center>
The award is given to the player receiving the most points.
In recent years, the MVP has been the subject of much criticism from fans and sports commenta-
tors. Wrote Fansided writer Phil Daniels: “The NBA fails to concretely deﬁne the criteria for the
Maurice Podoloﬀ Trophy winner. The only criterion is that the MVP is awarded annually to the
’most valuable player.’ Value is not deﬁned. Scope is not limited.” Many have also claimed that
the award has become a function of player popularity and media attention rather than performance.
To investigate voting behavior, we examine historical data from 1986-2012, looking at metrics in
several areas: player age, position, individual performance, contribution in the context of a team
and salary. We assume here that player salary functions as a proxy variable for understanding
popularity and overall market demand for a particular player. We narrow our focus to the sub-
set of players receiving positive point counts (typically a handful of players each season). Our
question of interest can then be distilled to: “Among the top-performing players, which character-
istics best predict total points?” Data pertaining to basketball metrics, player age, position and
MVP voting was drawn from www.basketball-reference.com. Player salary data was taken from
www.eskimo.com/~pbender.

Two seasons of data (1998-1999 and 2011-2012) were excluded from our analysis as player negotia-
tions prevented completion of these seasons’ games. The 1987-1988 and 1990-1991 seasons were also
excluded as player salary data could not be found. Total point counts per player were normalized
by the total number of points available since the total number of ballots cast diﬀers from year to
year, giving a response variable that can be interpreted as the proportion of the vote captured by a
particular player. Player salaries were normalized by the cumulative league salary for the particular
year to account for inﬂation.

After aggregating all of the positive point-receiving players over 23 seasons we are left with a sample
size of n = 374. This method makes two important assumptions. The ﬁrst is that the tastes and
preferences of the sports commentariat are roughly stable over time. To check the validity of this
assumption, we will examine models for both the full 23 seasons as well as for the most recent 10
seasons (n = 166). The second assumption is that the joint distribution of the covariates for players
in the running for MVP are independent from year to year. This assumption becomes important
as there are many recurring players in our sample.

Page with our results can be seen at http://velaraptor.github.io/nba_mvp_metric/



<b>Explanation of Variables:</b>

PER -- Player Efficiency Rating; a measure of per-minute production standardized such that the league average is 15

TS% -- True Shooting Percentage; a measure of shooting effeciency that takes into account 2-point field goals, 3-point field goals, and free throws

eFG% -- Effective Field Goal Percentage; this statistic adjusts for the fact that a 3-point field goal is worth one more point than a 2-point field goal

FTr -- Free Throw Attempt Rate-Number of FT Attempts Per FG Attempt

3PAr -- 3-Point Attempt Rate-Percentage of FG Attempts from 3-Point Range

ORB% -- Offensive Rebound Percentage; an estimate of the percentage of available offensive rebounds a player grabbed while he was on the floor

DRB% -- Defensive Rebound Percentage; an estimate of the percentage of available defensive rebounds a player grabbed while he was on the floor

TRB% -- Total Rebound Percentage; an estimate of the percentage of available rebounds a player grabbed while he was on the floor

AST% -- Assist Percentage; an estimate of the percentage of teammate field goals a player assisted while he was on the floor

STL% -- Steal Percentage; an estimate of the percentage of opponent possessions that end with a steal by the player while he was on the floor

BLK% -- Block Percentage; an estimate of the percentage of opponent two-point field goal attempts blocked by the player while he was on the floor

TOV% -- Turnover Percentage; an estimate of turnovers per 100 plays

USG% -- Usage Percentage; an estimate of the percentage of team plays used by a player while he was on the floor

ORtg -- Offensive Rating: An estimate of points produced (players) or scored (teams) per 100 possession

DRtg -- Defensive Rating: An estimate of points allowed per 100 possessions

OWS -- Offensive Win Shares; an estimate of the number of wins contributed by a player due to his offense

DWS -- Defensive Win Shares; an estimate of the number of wins contributed by a player due to his defense

WS -- Win Shares; an estimate of the number of wins contributed by a player

WS/48 -- Win Shares Per 48 Minutes; an estimate of the number of wins contributed by a player per 48 minutes (league average is approximately .100)

Copyright 2014 Christopher Vela & Daniel Schwartz


