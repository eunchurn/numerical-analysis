function y=fdist(t,g,m,c,z0)

y=z0-(g*m)/c*t+(g*m^2)/(c^2)*(1-exp(-(c/m)*t));