%%Carlos Luevanos
%%9 - 13 - 16
%%Lognormal distribution

clear all, close all, clc;


e = exp(1); %%euluers number

%%create mu, sigma, and x values
mu = 0;
sig = 1;
x = 0:.0001:3;

%%Create lognormal function
y = (1./(x.*sig.*sqrt(2*pi))).*e.^(-((log(x)-mu).^2)/(2.*sig.^2)); 
%%y1 = (1./(x.*sig.*sqrt(2*pi))).*exp((-((log(x)-mu).^2)/(2.*sig.^2))); 
%%z = max(y1 - y)


%%Plot lognormal distribution
figure(1)
plot(x,y,'b'); hold on;%hold on function puts multiplte plots on one graph
title('Lognormal PDF','FontSize',16,'FontWeight','bold');
xlabel('X','FontSize',20,'FontWeight','bold');
string = '$y(x) = \frac{1}{x\sigma \sqrt{2\pi}}e^-\frac{(lnx - \mu)^2}{2\sigma^2}$';%latex
ylabel(string,'FontSize',20,'FontWeight','bold','Interpreter','latex');
%%fancy latex spots in the graph
string1 = '$\mu = 0, \sigma = 1$';
text(0.6,0.3,string1,'Interpreter','latex','Color','b')
string2 = '$\mu = 0, \sigma = 0.5$';
text(0.1,1.0,string2,'Interpreter','latex','Color','g')
string3 = '$\mu = 0, \sigma = 0.25$';
text(0.5,1.7,string3,'Interpreter','latex','Color','r')

%%new values
mu = 0;
sig = .25;
x = 0:.0001:3;

%%Create lognormal function
y = (1./(x.*sig.*sqrt(2*pi))).*e.^(-((log(x)-mu).^2)/(2.*sig.^2)); 

%%Plot lognormal distribution
plot(x,y,'r'); hold on;


%%new values
mu = 0;
sig = .5;
x = 0:.0001:3;

%%Create lognormal function
y = (1./(x.*sig.*sqrt(2*pi))).*e.^(-((log(x)-mu).^2)/(2.*sig.^2)); 

%%Plot lognormal distribution
plot(x,y,'g')







