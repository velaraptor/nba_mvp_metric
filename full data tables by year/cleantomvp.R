a<-read.csv("1980.csv")
b<-read.csv("1981.csv")
c<-read.csv("1982.csv")
d<-read.csv("1983.csv")
e<-read.csv("1984.csv")
f<-read.csv("1985.csv")
g<-read.csv("1986.csv")
h<-read.csv("1987.csv")
i<-read.csv("1988.csv")
j<-read.csv("1989.csv")
k<-read.csv("1990.csv")
l<-read.csv("1991.csv")
m<-read.csv("1992.csv")
n<-read.csv("1993.csv")
o<-read.csv("1994.csv")
p<-read.csv("1995.csv")
q<-read.csv("1996.csv")
r<-read.csv("1998.csv")
s<-read.csv("2000.csv")
t<-read.csv("2001.csv")
u<-read.csv("2002.csv")
v<-read.csv("2003.csv")
w<-read.csv("2004.csv")
x<-read.csv("2005.csv")
y<-read.csv("2006.csv")
z<-read.csv("2007.csv")
aa<-read.csv("2008.csv")
ab<-read.csv("2009.csv")
ac<-read.csv("2010.csv")
ad<-read.csv("2011.csv")
a.1<-a[!(a$Pts.Won==0),]
b.1<-b[!(b$Pts.Won==0),]
c.1<-c[!(c$Pts.Won==0),]
d.1<-d[!(d$Pts.Won==0),]
e.1<-e[!(e$Pts.Won==0),]
f.1<-f[!(f$Pts.Won==0),]
g.1<-g[!(g$Pts.Won==0),]
h.1<-h[!(h$Pts.Won==0),]
i.1<-i[!(i$Pts.Won==0),]
j.1<-j[!(j$Pts.Won==0),]
k.1<-k[!(k$Pts.Won==0),]
l.1<-l[!(l$Pts.Won==0),]
m.1<-m[!(m$Pts.Won==0),]
n.1<-n[!(n$Pts.Won==0),]
o.1<-o[!(o$Pts.Won==0),]
p.1<-p[!(p$Pts.Won==0),]
q.1<-q[!(q$Pts.Won==0),]
r.1<-r[!(r$Pts.Won==0),]
s.1<-s[!(s$Pts.Won==0),]
t.1<-t[!(t$Pts.Won==0),]
u.1<-u[!(u$Pts.Won==0),]
v.1<-v[!(v$Pts.Won==0),]
w.1<-w[!(w$Pts.Won==0),]
x.1<-x[!(x$Pts.Won==0),]
y.1<-y[!(y$Pts.Won==0),]
z.1<-z[!(z$Pts.Won==0),]
aa.1<-aa[!(aa$Pts.Won==0),]
ab.1<-ab[!(ab$Pts.Won==0),]
ac.1<-ac[!(ac$Pts.Won==0),]
ad.1<-ad[!(ad$Pts.Won==0),]

a.1$Pts.Won<-a.1$Pts.Won/sum(a.1$Pts.Won)
b.1$Pts.Won<-b.1$Pts.Won/sum(b.1$Pts.Won)
c.1$Pts.Won<-c.1$Pts.Won/sum(c.1$Pts.Won)
d.1$Pts.Won<-d.1$Pts.Won/sum(d.1$Pts.Won)
e.1$Pts.Won<-e.1$Pts.Won/sum(e.1$Pts.Won)
f.1$Pts.Won<-f.1$Pts.Won/sum(f.1$Pts.Won)
g.1$Pts.Won<-g.1$Pts.Won/sum(g.1$Pts.Won)
h.1$Pts.Won<-h.1$Pts.Won/sum(h.1$Pts.Won)
i.1$Pts.Won<-i.1$Pts.Won/sum(i.1$Pts.Won)
j.1$Pts.Won<-j.1$Pts.Won/sum(j.1$Pts.Won)
k.1$Pts.Won<-k.1$Pts.Won/sum(k.1$Pts.Won)
l.1$Pts.Won<-l.1$Pts.Won/sum(l.1$Pts.Won)
m.1$Pts.Won<-m.1$Pts.Won/sum(m.1$Pts.Won)
n.1$Pts.Won<-n.1$Pts.Won/sum(n.1$Pts.Won)
o.1$Pts.Won<-o.1$Pts.Won/sum(o.1$Pts.Won)
p.1$Pts.Won<-p.1$Pts.Won/sum(p.1$Pts.Won)
q.1$Pts.Won<-q.1$Pts.Won/sum(q.1$Pts.Won)
r.1$Pts.Won<-r.1$Pts.Won/sum(r.1$Pts.Won)
s.1$Pts.Won<-s.1$Pts.Won/sum(s.1$Pts.Won)
t.1$Pts.Won<-t.1$Pts.Won/sum(t.1$Pts.Won)
u.1$Pts.Won<-u.1$Pts.Won/sum(u.1$Pts.Won)
v.1$Pts.Won<-v.1$Pts.Won/sum(v.1$Pts.Won)
w.1$Pts.Won<-w.1$Pts.Won/sum(w.1$Pts.Won)
x.1$Pts.Won<-x.1$Pts.Won/sum(x.1$Pts.Won)
y.1$Pts.Won<-y.1$Pts.Won/sum(y.1$Pts.Won)
z.1$Pts.Won<-z.1$Pts.Won/sum(z.1$Pts.Won)
aa.1$Pts.Won<-aa.1$Pts.Won/sum(aa.1$Pts.Won)
ab.1$Pts.Won<-ab.1$Pts.Won/sum(ab.1$Pts.Won)
ac.1$Pts.Won<-ac.1$Pts.Won/sum(ac.1$Pts.Won)
ad.1$Pts.Won<-ad.1$Pts.Won/sum(ad.1$Pts.Won)





salary<-file.path("http://www.eskimo.com/~pbender/misc",c("salaries86.txt","salaries88.txt","salaries89.txt","salaries91.txt","salaries92.txt","salaries93.txt","salaries94.txt","salaries95.txt","salaries96.txt","salaries97.txt","salaries98.txt","salaries00.txt","salaries01.txt","salaries02.txt","salaries03.txt","salaries04.txt","salaries05.txt","salaries06.txt","salaries07.txt","salaries08.txt","salaries09.txt","salaries10.txt","salaries11.txt"))
salary.1<-lapply(salary,readHTMLTable)








grandtotalmvp<-rbind(g.1,i.1,j.1,l.1,m.1,n.1,o.1,p.1,q.1,r.1,s.1,t.1,u.1,v.1,w.1,x.1,y.1,z.1,aa.1,ab.1,ac.1,ad.1)
grandtotalmvp$totals.Rk<-NULL
grandtotalmvp$First<-NULL
write.csv(grandtotalmvp,file="grandtotalmvp_1.csv")


tenyear<-rbind(t.1,u.1,v.1,w.1,x.1,y.1,z.1,aa.1,ab.1,ac.1,ad.1)
tenyear$totals.Rk<-NULL
tenyear$First<-NULL
write.csv(tenyear,file="tenyearmvp_1.csv")


ridge regression and lasso


l.1