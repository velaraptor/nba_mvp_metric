##http://github.com/velaraptor/nba_mvp_metric


##get opponent totals

library(XML)

##season totals for each player, according to basketball-reference.com,Tm-Team,G-Game,GS-Game Started,MP-Minutes Played, FG-Field Goals,FGA-Field Goals Attempted,3P-3 pointers,FT-Free Throws,ORB-Offensive Rebounds,DRB-Defensive Rebounds, TRB-Total Rebounds, AST-Assists,STL-Steals,BLK-Blocks,TOV-Turnovers,PF-Fouls, PTS-Points

season.totals<-file.path("http://www.basketball-reference.com/leagues",c("NBA_1980_totals.html","NBA_1981_totals.html","NBA_1982_totals.html","NBA_1983_totals.html","NBA_1984_totals.html","NBA_1985_totals.html","NBA_1986_totals.html","NBA_1987_totals.html","NBA_1988_totals.html","NBA_1989_totals.html","NBA_1990_totals.html","NBA_1991_totals.html","NBA_1992_totals.html","NBA_1993_totals.html","NBA_1994_totals.html","NBA_1995_totals.html","NBA_1996_totals.html","NBA_1997_totals.html","NBA_1998_totals.html","NBA_1999_totals.html","NBA_2000_totals.html","NBA_2001_totals.html","NBA_2002_totals.html","NBA_2003_totals.html","NBA_2004_totals.html","NBA_2005_totals.html","NBA_2006_totals.html","NBA_2007_totals.html","NBA_2008_totals.html","NBA_2009_totals.html","NBA_2010_totals.html","NBA_2011_totals.html","NBA_2012_totals.html","NBA_2013_totals.html"))
season<-lapply(season.totals,readHTMLTable)
s<-lapply(season,as.data.frame)
names(s)<-gsub(".*/(.*)\\..*","\\1", season.totals)
lapply(names(s),function(X) write.csv(s[[X]],file=paste0(X,".csv")))

##season advanced statistics for each player,PER -- Player Efficiency Rating; a measure of per-minute production standardized such that the league average is 15,TS% -- True Shooting Percentage; a measure of shooting effeciency that takes into account 2-point field goals, 3-point field goals, and free throws, eFG% -- Effective Field Goal Percentage; this statistic adjusts for the fact that a 3-point field goal is worth one more point than a 2-point field goal, FTr -- Free Throw Attempt Rate-Number of FT Attempts Per FG Attempt,3PAr -- 3-Point Attempt Rate-Percentage of FG Attempts from 3-Point Range,ORB% -- Offensive Rebound Percentage; an estimate of the percentage of available offensive rebounds a player grabbed while he was on the floor, DRB% -- Defensive Rebound Percentage; an estimate of the percentage of available defensive rebounds a player grabbed while he was on the floor, TRB% -- Total Rebound Percentage; an estimate of the percentage of available rebounds a player grabbed while he was on the floor,AST% -- Assist Percentage; an estimate of the percentage of teammate field goals a player assisted while he was on the floor, STL% -- Steal Percentage; an estimate of the percentage of opponent possessions that end with a steal by the player while he was on the floor, BLK% -- Block Percentage; an estimate of the percentage of opponent two-point field goal attempts blocked by the player while he was on the floor,TOV% -- Turnover Percentage; an estimate of turnovers per 100 plays,USG% -- Usage Percentage; an estimate of the percentage of team plays used by a player while he was on the floor,ORtg -- Offensive Rating: An estimate of points produced (players) or scored (teams) per 100 possession,DRtg -- Defensive Rating: An estimate of points allowed per 100 possessions, OWS -- Offensive Win Shares; an estimate of the number of wins contributed by a player due to his offense.,DWS -- Defensive Win Shares; an estimate of the number of wins contributed by a player due to his defense,WS -- Win Shares; an estimate of the number of wins contributed by a player,WS/48 -- Win Shares Per 48 Minutes; an estimate of the number of wins contributed by a player per 48 minutes (league average is approximately .100)

season.advanced<-file.path("http://www.basketball-reference.com/leagues",c("NBA_1980_advanced.html","NBA_1981_advanced.html","NBA_1982_advanced.html","NBA_1983_advanced.html","NBA_1984_advanced.html","NBA_1985_advanced.html","NBA_1986_advanced.html","NBA_1987_advanced.html","NBA_1988_advanced.html","NBA_1989_advanced.html","NBA_1990_advanced.html","NBA_1991_advanced.html","NBA_1992_advanced.html","NBA_1993_advanced.html","NBA_1994_advanced.html","NBA_1995_advanced.html","NBA_1996_advanced.html","NBA_1997_advanced.html","NBA_1998_advanced.html","NBA_1999_advanced.html","NBA_2000_advanced.html","NBA_2001_advanced.html","NBA_2002_advanced.html","NBA_2003_advanced.html","NBA_2004_advanced.html","NBA_2005_advanced.html","NBA_2006_advanced.html","NBA_2007_advanced.html","NBA_2008_advanced.html","NBA_2009_advanced.html","NBA_2010_advanced.html","NBA_2011_advanced.html","NBA_2012_advanced.html","NBA_2013_advanced.html"))
season.ad<-lapply(season.advanced,readHTMLTable)
s.a<-lapply(season.ad,as.data.frame)
names(s.a)<-gsub(".*/(.*)\\..*","\\1", season.advanced)
lapply(names(s.a),function(X) write.csv(s.a[[X]],file=paste0(X,".csv")))

##season ratings is team ratings for each season, W-L% -- Win-Loss Percentage, MOV -- Margin of Victory, ORtg -- Offensive Rating: An estimate of points produced (players) or scored (teams) per 100 possessions, DRtg -- Defensive Rating: An estimate of points allowed per 100 possessions, NRtg -- Net Rating; an estimate of point differential per 100 possessions., MOV/A -- Adjusted Margin of Victory; margin of victory adjusted for strength of opponent., ORtg/A -- Adjusted Offensive Rating; an estimate of points scored per 100 possessions adjusted for strength of opponent defense., DRtg/A -- Adjusted Defensive Rating; an estimate of points allowed per 100 possessions adjusted for strength of opponent offense., NRtg/A -- Adjusted Net Rating; an estimate of point differential per 100 possessions adjusted for strength of opponent.

season.ratings<-file.path("http://www.basketball-reference.com/leagues",c("NBA_1980_ratings.html","NBA_1981_ratings.html","NBA_1982_ratings.html","NBA_1983_ratings.html","NBA_1984_ratings.html","NBA_1985_ratings.html","NBA_1986_ratings.html","NBA_1987_ratings.html","NBA_1988_ratings.html","NBA_1989_ratings.html","NBA_1990_ratings.html","NBA_1991_ratings.html","NBA_1992_ratings.html","NBA_1993_ratings.html","NBA_1994_ratings.html","NBA_1995_ratings.html","NBA_1996_ratings.html","NBA_1997_ratings.html","NBA_1998_ratings.html","NBA_1999_ratings.html","NBA_2000_ratings.html","NBA_2001_ratings.html","NBA_2002_ratings.html","NBA_2003_ratings.html","NBA_2004_ratings.html","NBA_2005_ratings.html","NBA_2006_ratings.html","NBA_2007_ratings.html","NBA_2008_ratings.html","NBA_2009_ratings.html","NBA_2010_ratings.html","NBA_2011_ratings.html","NBA_2012_ratings.html","NBA_2013_ratings.html"))
season.ra<-lapply(season.ratings,readHTMLTable)
s.r<-lapply(season.ra,as.data.frame)
names(s.r)<-gsub(".*/(.*)\\..*","\\1", season.ratings)
lapply(names(s.r),function(X) write.csv(s.r[[X]],file=paste0(X,".csv")))

##mvp winners
mvp<-as.data.frame(readHTMLTable("http://bkref.com/pi/shareit/vRg8Z"))
write.csv(mvp,file="mvp.csv")


##award voting
award.voting<-file.path("http://www.basketball-reference.com/awards",c("awards_1980.html","awards_1981.html","awards_1982.html","awards_1983.html","awards_1984.html","awards_1985.html","awards_1986.html","awards_1987.html","awards_1988.html","awards_1989.html","awards_1990.html","awards_1991.html","awards_1992.html","awards_1993.html","awards_1994.html","awards_1995.html","awards_1996.html","awards_1997.html","awards_1998.html","awards_1999.html","awards_2000.html","awards_2001.html","awards_2002.html","awards_2003.html","awards_2004.html","awards_2005.html","awards_2006.html","awards_2007.html","awards_2008.html","awards_2009.html","awards_2010.html","awards_2011.html","awards_2012.html"))
award.vt<-lapply(award.voting,readHTMLTable)

clean.list.multiple.tables<-function(list){
	l<-list();
	total<-length(list);
	for(i in 1:total){
		l[[i]]<-list[[i]]$mvp;
	}
	return(l);
}
la<-clean.list.multiple.tables(award.vt)
l.a<-lapply(la,as.data.frame)
names(l.a)<-gsub(".*/(.*)\\..*","\\1", award.voting)
lapply(names(l.a),function(X) write.csv(l.a[[X]],file=paste0(X,".csv")))

## fix the data and clean it 

##changes type for each column from factor to numeric
change.num.totals<-function(list){
	team<-list;
	for( i in c(4,6:length(team))){
		team[,i]<-as.character(team[,i]);
		team[,i]<-as.numeric(team[,i]);	
	}
	return(team)
}

change.num.advanced<-function(list){
	team<-list;
	for( i in c(4,6:length(team))){
		team[,i]<-as.character(team[,i]);
		team[,i]<-as.numeric(team[,i]);	
	}
	return(team)
}

change.num.ratings<-function(list){
	team<-list;
	for( i in c(5:length(team))){
		team[,i]<-as.character(team[,i]);
		team[,i]<-as.numeric(team[,i]);	
	}
	return(team)
}

s.fix<-lapply(s,change.num.totals)
sa.fix<-lapply(s.a,change.num.advanced)
sr.fix<-lapply(s.r,change.num.ratings)


##deletes rows that are headers with no data
delete.row<-function(list){
	team<-list;
	team.1<-team[-grep("Player",team[,2]),]
	return(team.1)
}

s.fix.1<-lapply(s.fix,delete.row)
sa.fix.1<-lapply(sa.fix,delete.row)


##fixes Player name which has a star after their name
has.star<-function(list){
	team<-list;
	team[,2]<-as.character(team[,2]);
	check.star<-grep("\\*$",team[,2]);
	team[check.star,2]<-gsub("\\*$","",team[check.star,2]);
	return(team);
}

s.fix.1<-lapply(s.fix.1,has.star)
sa.fix.1<-lapply(sa.fix.1,has.star)


has.multiple.entry<-function(list){
	team<-list;
	team<-team[!duplicated(team[,2]),];
	return(team);	
		
}
fixed.s<-lapply(s.fix.1,has.multiple.entry)
fixed.sa<-lapply(sa.fix.1,has.multiple.entry)

nba_1980<-merge(fixed.s[[1]],fixed.sa[[1]],by.x="totals.Player",by.y="advanced.Player")
nba_1981<-merge(fixed.s[[2]],fixed.sa[[2]],by.x="totals.Player",by.y="advanced.Player")
nba_1982<-merge(fixed.s[[3]],fixed.sa[[3]],by.x="totals.Player",by.y="advanced.Player")
nba_1983<-merge(fixed.s[[4]],fixed.sa[[4]],by.x="totals.Player",by.y="advanced.Player")
nba_1984<-merge(fixed.s[[5]],fixed.sa[[5]],by.x="totals.Player",by.y="advanced.Player")
nba_1985<-merge(fixed.s[[6]],fixed.sa[[6]],by.x="totals.Player",by.y="advanced.Player")
nba_1986<-merge(fixed.s[[7]],fixed.sa[[7]],by.x="totals.Player",by.y="advanced.Player")
nba_1987<-merge(fixed.s[[8]],fixed.sa[[8]],by.x="totals.Player",by.y="advanced.Player")
nba_1988<-merge(fixed.s[[9]],fixed.sa[[9]],by.x="totals.Player",by.y="advanced.Player")
nba_1989<-merge(fixed.s[[10]],fixed.sa[[10]],by.x="totals.Player",by.y="advanced.Player")
nba_1990<-merge(fixed.s[[11]],fixed.sa[[11]],by.x="totals.Player",by.y="advanced.Player")
nba_1991<-merge(fixed.s[[12]],fixed.sa[[12]],by.x="totals.Player",by.y="advanced.Player")
nba_1992<-merge(fixed.s[[13]],fixed.sa[[13]],by.x="totals.Player",by.y="advanced.Player")
nba_1993<-merge(fixed.s[[14]],fixed.sa[[14]],by.x="totals.Player",by.y="advanced.Player")
nba_1994<-merge(fixed.s[[15]],fixed.sa[[15]],by.x="totals.Player",by.y="advanced.Player")
nba_1995<-merge(fixed.s[[16]],fixed.sa[[16]],by.x="totals.Player",by.y="advanced.Player")
nba_1996<-merge(fixed.s[[17]],fixed.sa[[17]],by.x="totals.Player",by.y="advanced.Player")
nba_1997<-merge(fixed.s[[18]],fixed.sa[[18]],by.x="totals.Player",by.y="advanced.Player")
nba_1998<-merge(fixed.s[[19]],fixed.sa[[19]],by.x="totals.Player",by.y="advanced.Player")
nba_1999<-merge(fixed.s[[20]],fixed.sa[[20]],by.x="totals.Player",by.y="advanced.Player")
nba_2000<-merge(fixed.s[[21]],fixed.sa[[21]],by.x="totals.Player",by.y="advanced.Player")
nba_2001<-merge(fixed.s[[22]],fixed.sa[[22]],by.x="totals.Player",by.y="advanced.Player")
nba_2002<-merge(fixed.s[[23]],fixed.sa[[23]],by.x="totals.Player",by.y="advanced.Player")
nba_2003<-merge(fixed.s[[24]],fixed.sa[[24]],by.x="totals.Player",by.y="advanced.Player")
nba_2004<-merge(fixed.s[[25]],fixed.sa[[25]],by.x="totals.Player",by.y="advanced.Player")
nba_2005<-merge(fixed.s[[26]],fixed.sa[[26]],by.x="totals.Player",by.y="advanced.Player")
nba_2006<-merge(fixed.s[[27]],fixed.sa[[27]],by.x="totals.Player",by.y="advanced.Player")
nba_2007<-merge(fixed.s[[28]],fixed.sa[[28]],by.x="totals.Player",by.y="advanced.Player")
nba_2008<-merge(fixed.s[[29]],fixed.sa[[29]],by.x="totals.Player",by.y="advanced.Player")
nba_2009<-merge(fixed.s[[30]],fixed.sa[[30]],by.x="totals.Player",by.y="advanced.Player")
nba_2010<-merge(fixed.s[[31]],fixed.sa[[31]],by.x="totals.Player",by.y="advanced.Player")
nba_2011<-merge(fixed.s[[32]],fixed.sa[[32]],by.x="totals.Player",by.y="advanced.Player")
nba_2012<-merge(fixed.s[[33]],fixed.sa[[33]],by.x="totals.Player",by.y="advanced.Player")


fix.award<-function(list){
	team<-list;
	team<-team[,c(2,5,6)];
	return(team);
}
l<-lapply(l.a,fix.award)

ndf<-list(nba_1980,nba_1981,nba_1982,nba_1983,nba_1984,nba_1985,nba_1986,nba_1987,nba_1988,nba_1989,nba_1990,nba_1991,nba_1992,nba_1993,nba_1994,nba_1995,nba_1996,nba_1997,nba_1998,nba_1999,nba_2000,nba_2001,nba_2002,nba_2003,nba_2004,nba_2005,nba_2006,nba_2007,nba_2008,nba_2009,nba_2010,nba_2011,nba_2012)

fix.mvp<-function(mvp){
	mvp<-mvp;
	mvp[,2]<-as.character(mvp[,2]);
	mvp[,2]<-as.numeric(mvp[,2]);
	mvp[,3]<-as.character(mvp[,3]);
	mvp[,3]<-as.numeric(mvp[,3]);
	colnames(mvp)[3]<-"Pts.Won"
	return(mvp);
}
l.1<-lapply(l,fix.mvp)

fix.columns.ndf<-function(list){
	x<-list;
	x<-data.frame(x,0);
	colnames(x)[55]<-"Pts.Won";
	colnames(x)[1]<-"Player";
	x$totals.Rk<-NULL;
	x$advanced.Rk<-NULL;
	x$advanced.Pos<-NULL;
	x$advanced.Age<-NULL;
	x$advanced.Tm<-NULL;
	x$advanced.G<-NULL;
	x$advanced.MP<-NULL;
	return(x);
}

ndf.1<-lapply(ndf,fix.columns.ndf)


clean<-function(totals,mvp){
	x<-totals;
	x<-x[x$Player %in% mvp$Player,];
	return(x)}
	
x<-mapply(clean,totals=ndf.1,mvp=l.1)
x.1<-t(x)

cleanup<-function(x){
	lis<-vector("list",33)
	for(i in 1:33){
		d<-data.frame(x[i,])
		lis[[i]]<-d
		}
		return(lis)
}

clee<-cleanup(x.1)
names(clee)<-c("1980","1981","1982","1983","1984",'1985',"1986","1987","1988","1989","1990","1991","1992","1993","1994",'1995',"1996","1997","1998","1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012")

lapply(names(clee),function(X) write.csv(clee[[X]],file=paste0(X,".csv")))


normalizevotes<-function(list){
	x<-list;
	y<-sum(x$Pts.Won);
	x$Pts.Won<-(x$Pts.Won/y)
	return(x)
}
l.2<-lapply(l.1,normalizevotes)
lapply(names(l.2),function(X) write.csv(l.2[[X]],file=paste0(X,".csv")))
