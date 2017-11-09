%%%%%%%% Right_shift.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function temp1 = Right_shift( curr )
    flag = 0;
    for i=1:2
        for j=1:2
            if(curr(i,j)==-1)
                flag=1;
                break;
            end
        end
        if(flag==1)
            break;
        end
    end
    
    if(j==2)
        temp1 = curr; %no right shift of blank is possible
    else
        ele = curr(i,j+1);
        curr(i,j+1) = curr(i,j);
        curr(i,j) = ele ;
        temp1 = curr;
    end
    
end