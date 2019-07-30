th = pi/6;
    z=5:0.1:15;
    syms p a p_;
    v1 = zeros(3);
    v2 = zeros(3);
    v3 = zeros(3);
    %r = 15 - 2*z;
    %x = 3*cos(th)*r;
    x = 1.5*cos(th)*(15-z);
    %y = 3*sin(th)*r;
    y = 1.5*sin(th)*(15-z);
    %z = 15 - 2*r;
    plot3(x,y,z);
    grid on;
    Tz = [1,0,0,0;0,1,0,0;0,0,1,7.5;0,0,0,1];
    Rx = [1,0,0,0;0,cos(p),sin(p),0;0,-sin(p),cos(p),0;0,0,0,1];
    Rz = [cos(a),sin(a),0,0;-sin(a),cos(a),0,0;0,0,1,0;0,0,0,1];
    Rx_ = [1,0,0,0;0,cos(p_),sin(p_),0;0,-sin(p_),cos(p_),0;0,0,0,1];
    Ori = [0;0;0;1];
    P1 = Rz*Rx*Tz*Ori
    P2 = Rx_*Tz*P1;
    eqn1 = x==(15*sin(a)*sin(p))/2;
    eqn2 = y==(15*sin(p_))/2 + (15*cos(p)*sin(p_))/2 + (15*cos(a)*cos(p_)*sin(p))/2;
    eqn3 = z==(15*cos(p_))/2 + (15*cos(p)*cos(p_))/2 - (15*cos(a)*sin(p)*sin(p_))/2;
    soln = solve([eqn1, eqn2, eqn3],[p,p_,a]);
    P = soln.p
    P_ = soln.p_
    A = soln.a