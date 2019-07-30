function[] = plot_final(X,Y,Z,x1,y1,z1,x2,y2,z2,alpha,beta,th1,th2)
    M = full_transform_rot(X,Y,Z,x1,y1,z1,x2,y2,z2,alpha,beta,th1,th2);
    plot3(M(1,:),M(2,:),M(3,:),'k-o')
    hold off;
    grid on;
    box on;
    axis equal;
    %xlim([-5,10]);
    %ylim([-5,15]);
    %zlim([-5,60]);
    view([135 45])
    %view([0 0]);
    %view([90 0]);
    pause(0.1);
end