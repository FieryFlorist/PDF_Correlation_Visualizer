; runs a simple test script that showcases what periodplot does

.run periodplot.pro
pi=3.14159265359
myx = indgen(2000)*4*pi/2000.0
myy = sin(myx)
plot, myx, myy
periodplot, myx, myy, 2*pi
