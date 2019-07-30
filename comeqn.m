function [q] = comeqn(t,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
 A = 27/800;
 B = -27/40;
 C = 27/8;
 
 %foot1 = [t;0;A*t.^3 + B*t.^2 + C*t.^1;1];
 q = 0.25*A*(t-x).^3 + 0.25*B*(t-x).^2 + 0.25*C*(t-x).^1;
end

