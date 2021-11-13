function y=fvel(t,g,m,c)

y=g*m/c*(1-exp(-c/m*t));