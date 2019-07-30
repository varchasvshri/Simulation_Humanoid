%for b = 1:100
for k = 0:0.3:3
    X = k;
    Y = (5/3)*k + 5;
    Z = 30*cos(pi/10);
    foot1 = [0;0;0;1];
    foot2 = [5;10;0;1];
    plot_final(X,Y,Z,foot1(1),foot1(2),foot1(3),foot2(1),foot2(2),foot2(3));
end;

for t=0:10
    X = k + 0.45*t;
    Y = 10;
    Z = 30*cos(pi/10) + comeqn(t+3,X);
    foot1 = [t;0;footeqn(t,0);1];
    foot2 = [5;10;0;1];
    plot_final(X,Y,Z,foot1(1),foot1(2),foot1(3),foot2(1),foot2(2),foot2(3));
end

for w = 3:-1:-3
    X = k + 0.45*t;
    Y = 5 + (5/3)*w;
    Z = 30*cos(pi/10);
    foot1 = [t;0;0;1];
    foot2 = [5;10;0;1];
    plot_final(X,Y,Z,foot1(1),foot1(2),foot1(3),foot2(1),foot2(2),foot2(3));
end;

for m = 5:15
    X = 7.5 + 0.45*(m-5);
    Y = 5 + (5/3)*w;
    Z = 30*cos(pi/10) + comeqn(m+2.5,X);
    foot1 = [t;0;0;1];
    foot2 = [m;10;footeqn(m,5)];
    plot_final(X,Y,Z,foot1(1),foot1(2),foot1(3),foot2(1),foot2(2),foot2(3));
end;
for z = -3:0.5:0
    X = 12;
    Y = 5 + (5/3)*z;
    Z = 30*cos(pi/10);
    foot1 = [t;0;0;1];
    foot2 = [15;10;0;1];
    plot_final(X,Y,Z,foot1(1),foot1(2),foot1(3),foot2(1),foot2(2),foot2(3));
end;
%end    