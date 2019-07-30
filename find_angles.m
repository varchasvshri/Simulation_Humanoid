function [ t1,t2 ] = find_angles( x,xa,h,ha )
    
t1= -2*atan((30*xa - 30*x + (-(h^2 - 2*h*ha + ha^2 + x^2 - 2*x*xa + xa^2)*(h^2 - 2*h*ha + ha^2 + x^2 - 2*x*xa + xa^2 - 900))^(1/2))/(h^2 - 2*h*ha + 30*h + ha^2 - 30*ha + x^2 - 2*x*xa + xa^2));
t2= 2*atan((30*x - 30*xa + (-(h^2 - 2*h*ha + ha^2 + x^2 - 2*x*xa + xa^2)*(h^2 - 2*h*ha + ha^2 + x^2 - 2*x*xa + xa^2 - 900))^(1/2))/(h^2 - 2*h*ha + 30*h + ha^2 - 30*ha + x^2 - 2*x*xa + xa^2))
end

%syms phi del;
 %soln = solve(15*cos(phi)+15*cos(del-phi)==hip1(3)-(A*t.^3 + B*t.^2 + C*t.^1),15*sin(del-phi)-15*sin(phi)==hip1(1)-t,phi>=0,phi<pi/2,del>=0,del<pi/2,phi,del);
 %A_ = soln.phi;
 %B_ = soln.del;
 
 %syms phi del;
  %  soln = solve(15*cos(phi)+15*cos(del-phi)==30*cos(th),15*sin(del-phi)-15*sin(phi)==x,phi>=0,phi<pi/2,del>=0,del<pi/2,phi,del);
   % A = soln.phi;
    %B = soln.del;
    
%    syms phi del;
 %   soln = solve(15*cos(phi)+15*cos(del-phi)==30*cos(th),15*sin(del-phi)-15*sin(phi)==x,phi>=0,phi<pi/2,del>=0,del<pi/2,phi,del);
  %  A_ = soln.phi;
   % B_ = soln.del;
    %RLRy = [cos(A_),0,-sin(A_),0;0,1,0,0;sin(A_),0,cos(A_),0;0,0,0,1];
    
    