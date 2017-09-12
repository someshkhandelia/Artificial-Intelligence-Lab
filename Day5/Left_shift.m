%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Perform Steepest Ascent Hill Climbing using MATLAB  %%%%%%%%%%%%%%%%%%%

%%%%%%%% Left_shift.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function temp2 = Left_shift( curr )
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
    
    if(j==1)
        temp2 = curr; %no left shift of blank is possible
    else
        ele = curr(i,j-1);
        curr(i,j-1) = curr(i,j);
        curr(i,j) = ele ;
        temp2 = curr;
    end


end

