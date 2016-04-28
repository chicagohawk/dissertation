i = 0; j = 0;
A =[1 2 -5 4 -3 2 6 -5 -1]';
A =[1 2 -5 4 -3 5 -5 -1]';

Tmin = max(A(1),0);
Tsum = A(1);
Vmax = A(1);

 
for k = 2:length(A);
    Tsum = Tsum + A(k);
    if Tsum > Tmin;
        Vmax = Tsum - Tmin; j = k;
    end 
    if Tsum < Tmin
        Tmin = Tsum; i = min(k+1,j);
    end 
end 

 
disp(['Maximum subarray value is ', num2str(Vmax)]);
disp(['Maximum subarray goes from ',num2str(i),' to ',num2str(j)]);