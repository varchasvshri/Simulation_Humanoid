for a = 0:pi/36:pi/2
    for v = 0:0.2:1
    plot_final(5*sin(a),5*cos(a),30*cos(pi/10),0,0,v,10*sin(a),10*cos(a),0,a,a,0,pi/2);    
    end
    for m = 0:pi/180:pi/36
    plot_final(5*sin(a),5*cos(a),30*cos(pi/10),0,0,1,10*sin(a),10*cos(a),0,a+m,a,0,pi/2);
    end
    for v = 1:-0.2:0
    plot_final(5*sin(a),5*cos(a),30*cos(pi/10),0,0,v,10*sin(a),10*cos(a),0,a+pi/36,a,0,pi/2);    
    end
    
    for v = 0:0.2:1
    plot_final(5*sin(a),5*cos(a),30*cos(pi/10),0,0,0,10*sin(a),10*cos(a),v,a,a,0,pi/2);
    end
    for m = 0:pi/180:pi/36
    plot_final(5*sin(a),5*cos(a),30*cos(pi/10),0,0,0,10*sin(a),10*cos(a),1,a+pi/36,a+m,0,pi/2);
    end
    for v = 1:-0.2:0
    plot_final(5*sin(a),5*cos(a),30*cos(pi/10),0,0,0,10*sin(a),10*cos(a),v,a+pi/36,a+pi/36,0,pi/2);
    end
end