%0.618
%err should not be too small, otherwise errors will occur
function [opt_point opt_value]=GoldenSectionMethod(tstart,tend,err)
        b=tstart+0.618*(tend-tstart);
        fb=test_func(b);
        a=tstart+tend-b;
        fa=test_func(a);
while(abs(b-a)>err)
        if(fa<=fb)
            tend=b;
            b=a;
            fb=fa;
            a=tstart+tend-b;
            fa=test_func(a);
        else
            tstart=a;
            a=b;
            fa=fb;
            b=tstart+0.618*(tend-tstart);
            fb=test_func(b);
        end  
end
opt_point=0.5*(tstart+tend);
opt_value=test_func(opt_point);
end