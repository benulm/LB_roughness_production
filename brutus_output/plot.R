setwd("~/ETH/Master/7. Semester/Lattice Boltzi/LB Project/LB_roughness_production/brutus_output/output/kbc/h10/obstac")
#setwd("~/ETH/Master/7. Semester/Lattice Boltzi/LB Project/LB_roughness_production/brutus_output/output/kbc/h10/atmos")
#setwd("~/ETH/Master/7. Semester/Lattice Boltzi/LB Project/LB_roughness_production/brutus_output/output/entropic/h10/atmos")
#setwd("~/ETH/Master/7. Semester/Lattice Boltzi/LB Project/LB_roughness_production/brutus_output/output/kbc/h20/atmos")
legend = getwd()
as.character(legend)
legend=substr(legend,110,1000)

a <- read.csv("./1u_profile.dat", header=FALSE)
b <- read.csv("./200001u_profile.dat", header=FALSE)
c <- read.csv("./500001u_profile.dat", header=FALSE)
d <- read.csv("./700001u_profile.dat", header=FALSE)
e <- read.csv("./900001u_profile.dat", header=FALSE)
f <- read.csv("./1100001u_profile.dat", header=FALSE)
g <- read.csv("./1900001u_profile.dat", header=FALSE)
h <- read.csv("./2900001u_profile.dat", header=FALSE)
i <- read.csv("./3900001u_profile.dat", header=FALSE)
j <- read.csv("./4900001u_profile.dat", header=FALSE)


#matplot((a[,1])^(1/7),(a[,1]), type="l", col="green")
matplot(a[,2],a[,1], type="l", col="red", xlim=c(0,0.1), ylim=c(0,200),xlab=("velocoity v"), ylab=("height h"))
lines(b[,2],b[,1], type="l", col="green")
lines(c[,2],c[,1], type="l", col="cyan")
lines(d[,2],d[,1], type="l",col="blue")
lines(e[,2],e[,1], type="l")
lines(f[,2],f[,1], type="l", col="red")
lines(h[,2],h[,1], type="l", col="orange")
lines(i[,2],i[,1], type="l", col="cyan")
lines(j[,2],j[,1], type="l", col="green")
legend(0,100,legend)


u_h <- read.csv("./u_h.dat", header=FALSE)
matplot(u_h[,1],u_h[,2], type="l", col="red",xlab=("time step"), ylab=("velocity (H/2)"))
legend(3000000,0.065,legend)

a <- read.csv("./1I_profile.dat", header=FALSE)
b <- read.csv("./200001I_profile.dat", header=FALSE)
c <- read.csv("./500001I_profile.dat", header=FALSE)
d <- read.csv("./700001I_profile.dat", header=FALSE)
e <- read.csv("./900001I_profile.dat", header=FALSE)
f <- read.csv("./1100001I_profile.dat", header=FALSE)
g <- read.csv("./1900001I_profile.dat", header=FALSE)
h <- read.csv("./2900001I_profile.dat", header=FALSE)
i <- read.csv("./3900001I_profile.dat", header=FALSE)
j <- read.csv("./4900001I_profile.dat", header=FALSE)

#matplot((a[,1])^(1/7),(a[,1]), type="l", col="green")
matplot(a[,2],a[,1], type="l", col="red", xlim=c(0,1.1), ylim=c(0,200),xlab=("turbulent intensity I"), ylab=("height h"))
lines(b[,2],b[,1], type="l", col="green")
lines(c[,2],c[,1], type="l", col="cyan")
lines(d[,2],d[,1], type="l",col="blue")
lines(e[,2],e[,1], type="l")
lines(f[,2],f[,1], type="l", col="red")
lines(g[,2],g[,1], type="l", col="purple")
lines(h[,2],h[,1], type="l", col="orange")
lines(i[,2],i[,1], type="l", col="cyan")
lines(j[,2],j[,1], type="l", col="green")
legend(0.1,100,legend)







