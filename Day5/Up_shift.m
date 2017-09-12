%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Perform Steepest Ascent Hill Climbing using MATLAB  %%%%%%%%%%%%%%%%%%%

%%%%%%%% Up_shift.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function temp3 = Up_shift( curr )
    flag = 0;
    for i=1:3
        for j=1:3
            if(curr(i,j)==-1)
                flag=1;
                break;
            end
        end
        if(flag==1)
            break;
        end
    end
    
    if(i==1)
        temp3 = curr; %no up shift of blank is possible
    else
        ele = curr(i-1,j);
        curr(i-1,j) = curr(i,j);
        curr(i,j) = ele ;
        temp3 = curr;
    end


end

