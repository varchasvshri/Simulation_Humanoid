for i=0:.3:3
    x = i;
    y = (5/3)*i;
    th = atan(y/(30*cos(pi/10)));
    foot1 = [0;0;0;1];
    foot2 = [5;10;0;1];
    
    syms phi del;
    soln = solve(15*cos(phi)+15*cos(del-phi)==30*cos(pi/10),-15*sin(del-phi)+15*sin(phi)==x,phi>=0,phi<pi/2,del>=0,del<pi/2,phi,del);
    A = soln.phi;
    B = soln.del;
    %[A,B] = f_angles(x,0,30*cos(pi/10),0);
    LRy = [cos(A),0,sin(A),0;0,1,0,0;-sin(A),0,cos(A),0;0,0,0,1];
    LRy_ = [cos(B),0,-sin(B),0;0,1,0,0;sin(B),0,cos(B),0;0,0,0,1];
    Rx = [1,0,0,0;0,cos(th),sin(th),0;0,-sin(th),cos(th),0;0,0,0,1];
    
    knee1 = Rx*LRy*translate(0,0,15)*foot1;
    hip1 = Rx*LRy*translate(0,0,15)*LRy_*translate(0,0,15)*foot1;
    COM = translate(0,5,0)*hip1;
    hip2 = translate(0,5,0)*COM;
    
    syms phi del;
    soln = solve(15*cos(phi)+15*cos(del-phi)==30*cos(pi/10),15*sin(del-phi)-15*sin(phi)==5-x,phi>=0,phi<pi/2,del>=0,del<pi/2,phi,del);
    A_ = soln.phi;
    B_ = soln.del;
    %[A_, B_]=solve_r(x);
    RRy = [cos(A_),0,sin(A_),0;0,1,0,0;-sin(A_),0,cos(A_),0;0,0,0,1];
    RRy_ = [cos(B_),0,-sin(B_),0;0,1,0,0;sin(B_),0,cos(B_),0;0,0,0,1];
    
    knee2 = [1,0,0,5;0,1,0,10;0,0,1,0;0,0,0,1]*Rx*RRy*translate(0,0,15)*[0;0;0;1];
    hip2 = [1,0,0,5;0,1,0,10;0,0,1,0;0,0,0,1]*Rx*RRy*translate(0,0,15)*RRy_*translate(0,0,15)*[0;0;0;1];
    head = translate(0,0,25)*COM;
    neck = translate(0,0,20)*COM;
    shld1 = translate(0,-5,0)*neck;
    shld2 = translate(0,5,0)*neck;
    hand1 = translate(0,0,10)*hip1;
    hand2 = translate(0,0,10)*hip2;
    
    plot_final(foot1,knee1,hip1,COM,hip2,knee2,foot2,neck,head,shld1,shld2,hand1,hand2);
end

for t=0:1:10
 A = 27/800;
 B = -27/40;
 C = 27/8;
 w = 3 + 0.45*t;
 foot1 = [t;0;A*t.^3 + B*t.^2 + C*t.^1;1];
 hip1 = [w;5;0.25*A*t.^3 + 0.25*B*t.^2 + 0.25*C*t.^1+28.1034;1];
 [A_,B_] = f_angles(hip1(1),t,hip1(3),foot1(3));
 LRy = [cos(A_),0,sin(A_),0;0,1,0,0;-sin(A_),0,cos(A_),0;0,0,0,1];
 LRy_ = [cos(B_),0,-sin(B_),0;0,1,0,0;sin(B_),0,cos(B_),0;0,0,0,1];
 Rx = [1,0,0,0;0,cos(th),sin(th),0;0,-sin(th),cos(th),0;0,0,0,1];
 COM = translate(0,5,0)*hip1;
 hip2 = translate(0,5,0)*COM;
 head = translate(0,0,25)*COM;
 neck = translate(0,0,20)*COM;
 shld1 = translate(0,-5,0)*neck;
 shld2 = translate(0,5,0)*neck;
 hand1 = translate(0,0,10)*hip1;
 hand2 = translate(0,0,10)*hip2;
           
 knee1 = [1,0,0,foot1(1);0,1,0,foot1(2);0,0,1,foot1(3);0,0,0,1]*Rx*LRy*translate(0,0,15)*[0;0;0;1];
 %hip1 = [1,0,0,foot1(1);0,1,0,foot1(2);0,0,1,foot1(3);0,0,0,1]*Rx*LRy*T*LRy_*T*[0;0;0;1];
 
 [p,d] = f_angles(hip2(1),5,hip2(3),foot2(3));
 RRy = [cos(p),0,sin(p),0;0,1,0,0;-sin(p),0,cos(p),0;0,0,0,1];
 knee2 = translate(5,10,0)*Rx*RRy*translate(0,0,15)*[0;0;0;1];
 
 plot_final(foot1,knee1,hip1,COM,hip2,knee2,foot2,neck,head,shld1,shld2,hand1,hand2);
end 