function [t1,t2] = angle(x,xa,h,ha,theta)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
syms a b;
soln = solve(15*cos(a)+15*cos(a-b)==30*(h-ha)*cos(theta),15*sin(a)-15*sin(a-b)==x-xa,a>0,b>0,a,b);
soln.a
soln.b 
%t1= 2*atan((60*(x - xa))/(h^2 - 2*h*ha + 30*h + ha^2 - 30*ha + x^2 - 2*x*xa + xa^2) + (30*xa - 30*x + (-(h^2 - 2*h*ha + ha^2 + x^2 - 2*x*xa + xa^2)*(h^2 - 2*h*ha + ha^2 + x^2 - 2*x*xa + xa^2 - 900))^(1/2))/(h^2 - 2*h*ha + 30*h + ha^2 - 30*ha + x^2 - 2*x*xa + xa^2));
%t2= -2*atan((30*xa - 30*x + (-(h^2 - 2*h*ha + ha^2 + x^2 - 2*x*xa + xa^2)*(h^2 - 2*h*ha + ha^2 + x^2 - 2*x*xa + xa^2 - 900))^(1/2))/(h^2 - 2*h*ha + 30*h + ha^2 - 30*ha + x^2 - 2*x*xa + xa^2));
end