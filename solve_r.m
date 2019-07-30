function [ A, B ] = solve_r( x )
A = atan((x/(30*cos(pi/10))) + acos(sqrt((x)^2 + 900*(cos(pi/10))^2)/30));
B = 2*acos(sqrt((x)^2 + 900*(cos(pi/10))^2)/30);
end

