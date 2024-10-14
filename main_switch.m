function [a,f,new_array] = main_switch(n,iter,freqs,amplit)
amp=8;%mA
freq=50;%Hz
switch n
    case 1
        
        a = amplit(iter);
        f = freq;
        X = sprintf('First Trial: Control Frequency: f = %.2f and Varying Amplitude: A %.2f mA',f,a);
        
        disp(X)
    case 2
        a = amp;
        f = freqs(iter);
        X = sprintf('2nd Trial: Control Amplitude: A =  %.2f and Varying Frequency: f = %.2f Hz',a,f);
        
        disp(X)
    case 3
        a = amplit(iter);
        f = freqs(iter);
        X = sprintf('3rd Trial: Varying Amplitude and Frequency: A = %.2f mA | f = %.2f Hz',a,f);
        
        disp(X)


end

end