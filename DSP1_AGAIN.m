for i=0:0.3:3
    x = -i;
    y = (5/3)*i;
    th = atan(y/(30*cos(pi/10)));
    foot1 = [0;0;0;1];
    %foot2 = [0,10,0];
    %COM = [x,y+5,30*cos(pi/10)];
    
    syms phi del;
    soln = solve(15*cos(phi)+15*cos(del-phi)==30*cos(th),15*sin(del-phi)-15*sin(phi)==x,phi>=0,phi<pi/2,del>=0,del<pi/2,phi,del);
    A = soln.phi;
    B = soln.del;
    
    T = [1,0,0,0;0,1,0,0;0,0,1,15;0,0,0,1];
    %nT = [1,0,0,0;0,1,0,15*sin(pi/10);0,0,1,15*cos(9*pi/10);0,0,0,1];
    T_COM = [1,0,0,0;0,1,0,5;0,0,1,0;0,0,0,1];
    T_COM_ = [1,0,0,0;0,1,0,-5;0,0,1,0;0,0,0,1];
    LLRy = [cos(A),0,-sin(A),0;0,1,0,0;sin(A),0,cos(A),0;0,0,0,1];
    %nRy = [cos(A),0,-sin(A),0;0,1,0,0;sin(A),0,cos(A),0;0,0,0,1];
    LLRy_ = [cos(B),0,sin(B),0;0,1,0,0;-sin(B),0,cos(B),0;0,0,0,1];
    %nRy_ = [cos(A-B),0,-sin(A-B),0;0,1,0,0;sin(A-B),0,cos(A-B),0;0,0,0,1];
    LLRz = [cos(th),sin(th),0,0;-sin(th),cos(th),0,0;0,0,1,0;0,0,0,1];
    RLRz = [cos(th),-sin(th),0,0;sin(th),cos(th),0,0;0,0,1,0;0,0,0,1];
    %nRz = [-1,0,0,0;0,-1,0,0;0,0,1,0;0,0,0,1];
    
    knee1 = LLRz*LLRy*T*foot1;
    COM = [x;y;30*cos(pi/10)*cos(th);1];
    hip1 = T_COM_*COM;
    hip2 = T_COM*COM;
    
    syms phi del;
    soln = solve(15*cos(phi)+15*cos(del-phi)==30*cos(th),15*sin(del-phi)-15*sin(phi)==x,phi>=0,phi<pi/2,del>=0,del<pi/2,phi,del);
    A_ = soln.phi;
    B_ = soln.del;
    RLRy = [cos(A_),0,-sin(A_),0;0,1,0,0;sin(A_),0,cos(A_),0;0,0,0,1];
    
    foot2 = [-5;10;0;1];
    %knee2 = [1,0,0,5;0,1,0,10;0,0,1,0;0,0,0,1]*RLRz*RLRy*T*[1,0,0,-5;0,1,0,-10;0,0,1,0;0,0,0,1]*foot2;
    knee2 = RLRz*RLRy*T*foot2;
     
    plot3([foot1(1);knee1(1);hip1(1);COM(1);hip2(1);knee2(1);foot2(1)],[foot1(2);knee1(2);hip1(2);COM(2);hip2(2);knee2(2);foot2(2)],[foot1(3);knee1(3);hip1(3);COM(3);hip2(3);knee2(3);foot2(3)],'b-o');
    
    %plot3([foot1(1);knee1(1);hip1(1);COM(1);hip2(1)],[foot1(2);knee1(2);hip1(2);COM(2);hip2(2)],[foot1(3);knee1(3);hip1(3);COM(3);hip2(3)],'b-o');
    grid on;
    box on;
    axis equal;
    view([135 45]);
    %view([0 90]);
    xlim([-20 5]);
    ylim([-5 15]);
    zlim([0 30]);    
    pause(0.01);
end

for t=0:-1:-10
 A = -27/800;
 B = -27/40;
 C = -27/8;
 foot1 = [t;0;A*t.^3 + B*t.^2 + C*t.^1;1];
    
 syms phi del;
 soln = solve(15*cos(phi)+15*cos(del-phi)==hip1(3)-(A*t.^3 + B*t.^2 + C*t.^1),15*sin(del-phi)-15*sin(phi)==hip1(1)-t,phi>=0,phi<pi/2,del>=0,del<pi/2,phi,del);
 A_ = soln.phi;
 B_ = soln.del;
 RLRy = [cos(A_),0,-sin(A_),0;0,1,0,0;sin(A_),0,cos(A_),0;0,0,0,1];
 
 %[A_,B_] = find_angles(hip1(1),t,hip1(3),A*t.^3 + B*t.^2 + C*t.^1);
 RLRy = [cos(A_),0,-sin(A_),0;0,1,0,0;sin(A_),0,cos(A_),0;0,0,0,1];
 knee1 = RLRz*RLRy*T*foot1;
 A = -5/336;
 B = -25/112;
 C = -15/14;
 D = -45/28;
 w = -3 + 0.3*t;
 hip2 = [w;A*w.^3 + B*w.^2 + C*w.^1 + D;28.1034;1];
 COM = T_COM_*hip2;
 hip1 = T_COM_*COM;
 plot3([foot1(1);knee1(1);hip1(1);COM(1);hip2(1);knee2(1);foot2(1)],[foot1(2);knee1(2);hip1(2);COM(2);hip2(2);knee2(2);foot2(2)],[foot1(3);knee1(3);hip1(3);COM(3);hip2(3);knee2(3);foot2(3)],'b-o');
 grid on;
 box on;
 axis equal;
 view([135 45]);
 xlim([-20 5]);
 ylim([-10 15]);
 zlim([0 30]);
 pause(0.01);
end 