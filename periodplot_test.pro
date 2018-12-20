; runs a simple test script that showcases what periodplot does

.run periodplot.pro
pi=3.14159265359
myx = indgen(2000)*4*pi/2000.0
myy = sin(myx)
plot, myx, myy
periodplot, myx, myy, 2*pi

print, 'Press Any Key For Next Demonstration'
temp = get_kbrd()

.run PDF_transform.pro
q_in = indgen(2500)*0.02
noisey_SofQ = randomu(10, 2500)
noisey_GofR = pdf_trans(q_in, noisey_SofQ, indgen(7000)*0.01, 0.02)
plot, noisey_GofR[*,0], noisey_GofR[*,1], xrange=[0,10]
periodplot, noisey_GofR[*,0], noisey_GofR[*,1], 2*pi/50.0
