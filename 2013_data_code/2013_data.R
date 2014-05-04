library(XML)
library(MASS)
thir<-readHTMLTable("http://www.basketball-reference.com/leagues/NBA_2014_totals.html")
thir.1<-as.data.frame(thir)
thir.adv<-readHTMLTable("http://www.basketball-reference.com/leagues/NBA_2014_advanced.html")
thir.adv.1<-as.data.frame(thir.adv)
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
thir.1.totals<-change.num.totals(thir.1)
thir.1.adv<-change.num.advanced(thir.adv.1)
delete.row<-function(list){
	team<-list;
	team.1<-team[-grep("Player",team[,2]),]
	return(team.1)
}
thir.1.totals<-delete.row(thir.1.totals)
thir.1.adv<-delete.row(thir.1.adv)
has.star<-function(list){
	team<-list;
	team[,2]<-as.character(team[,2]);
	check.star<-grep("\\*$",team[,2]);
	team[check.star,2]<-gsub("\\*$","",team[check.star,2]);
	return(team);
}
has.multiple.entry<-function(list){
	team<-list;
	team<-team[!duplicated(team[,2]),];
	return(team);	
}
thir.1.totals<-has.star(thir.1.totals)
thir.1.totals<-has.multiple.entry(thir.1.totals)
thir.1.adv<-has.star(thir.1.adv)
thir.1.adv<-has.multiple.entry(thir.1.adv)
nba_2013<-merge(thir.1.totals,thir.1.adv,by.x="totals.Player",by.y="advanced.Player")
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
nba_2013<-fix.columns.ndf(nba_2013)
write.csv(nba_2013,file="nba_2013.csv")







salary<-file.path("http://hoopshype.com/salaries",c("brooklyn.htm","atlanta.htm","boston.htm","charlotte.htm","chicago.htm","cleveland.htm","dallas.htm","denver.htm","detroit.htm","golden_state.htm","houston.htm","indiana.htm","la_clippers.htm","la_lakers.htm","memphis.htm","miami.htm","milwaukee.htm","minnesota.htm","new_orleans.htm","new_york.htm","oklahoma_city.htm","orlando.htm","philadelphia.htm","phoenix.htm","portland.htm","sacramento.htm","san_antonio.htm","toronto.htm","utah.htm","washington.htm"))
sal<-lapply(salary,readHTMLTable)
names.extract<-function(list){
	newlist<-list(0)
	for(i in 1:30){
		names(list[[i]])<-c("a","b","c","d","e","f","sal")
	}
	for(i in 1:30){
		newlist[[i]]<-list[[i]]$sal
	}
	return(newlist)
}
sal.1<-names.extract(sal)
s<-lapply(sal.1,as.data.frame)
df<-ldply(s,data.frame)
df<-df[,1:2]
delete.row<-function(list){
	team<-list;
	team.1<-team[-grep("Player",team[,1]),]
	return(team.1)
}
df.1<-delete.row(df)
df.1[,1]<-as.character(df.1[,1])
df.1[570,1]<-"Nene"

empty.delete.row<-function(data){
	team<-data;
	team.1<-team[-grep("^$",team[,1]),]
	return(team.1)
}
df.2<-empty.delete.row(df.1)
empty<-function(data){
	team<-data;
	team.1<-team[-grep("Â",team[,2]),]
	return(team.1)
}
df.3<-empty(df.2)
delete.money<-function(data){
	team<-data;
	team[,2]<-as.character(team[,2]);
	check.money<-grep("[[:punct:]]",team[,2]);
	team[check.money,2]<-gsub("[[:punct:]]","",team[check.money,2]);
	return(team)
}
df.3<-delete.money(df.3)
df.3[,2]<-as.numeric(df.3[,2])
total<-df.3[df.3$V1=="TOTALS:",2]
sum.total<-sum(total)
empty.totals<-function(data){
	team<-data;
	team.1<-team[-grep("TOTALS:",team[,1]),]
	return(team.1)	
}
df.3<-empty.totals(df.3)
names(df.3)[2]<-"Salary"
df.3$Salary<-df.3$Salary/sum.total
nba_2013.1<-merge(nba_2013,df.3,by.x="Player",by.y="V1")
fitforward<-lm(Pts.Won ~ advanced.WS + Salary + advanced.USG. + 
    totals.FT + advanced.TOV. + advanced.TS. + totals.PF + advanced.AST. + 
    totals.FG + totals.MP + advanced.PER + totals.TOV + advanced.STL. + 
    totals.PTS,data=mvp)
    
 nba_2014<-nba_2013.1[nba_2013.1$totals.G>=76,]   
 nba_2014[is.na(nba_2014)]<-0
 pre<-predict(fitforward,newdata=nba_2014)
 m<-data.frame(nba_2014$Player,nba_2014$totals.G,pre)
 top.order<-order(m[,3],decreasing=T)
 m[top.order,]  
