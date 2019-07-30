function [q] = footeqn(t,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
 A = 27/800;
 B = -27/40;
 C = 27/8;
 %t = 2.2222*(x-k);
 %foot1 = [t;0;A*t.^3 + B*t.^2 + C*t.^1;1];
 q = A*(t-x).^3 + B*(t-x).^2 + C*(t-x).^1;
end

