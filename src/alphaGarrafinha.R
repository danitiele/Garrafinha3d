garra = read.table("garrafinha2.xyz")

#dec.garra = rbinom(nrow(garra), 1, 0.01)
#garra = cbind(dec.garra, garra)
#g.garra = garra[garra$dec.garra == 1,]
g.garra = garra


head(garra)


require(rgl)
require(alphashape3d)

rgl.open()
rgl.points(x = g.garra$V3, y = g.garra$V4, z = g.garra$V5, color = rgb(g.garra$V6, g.garra$V7, g.garra$V8, max = 255))


plot(x = g.garra$V3, y = g.garra$V5)

# Criando alpha shape para o objeto
alpha = 0.25
garra3d = ashape3d(as.matrix(g.garra[,3:5]), alpha, pert=TRUE)
plot(garra3d)
volume_ashape3d(garra3d)
