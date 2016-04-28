i = 0; j = 0;
A =[-1 2 -5 4 -3 2 6 -5 10 -1]';

max_end_here = 0; i0=0; j0=0;
max_so_far = 0; i1=0; j1=0;
for i = 1:length(A),
    if max_end_here+A(i) > 0,
        max_end_here = max_end_here+A(i);
        j0=max(i,i0);
    else,
        max_end_here = 0;
        i0=i;
    end
    
    if max_so_far > max_end_here,
        ;
    else
        max_so_far = max_end_here;
        i1=i0;j1=j0;
    end
end

disp(['from', num2str(i1+1), 'to', num2str(j1), 'value', num2str(max_so_far)])