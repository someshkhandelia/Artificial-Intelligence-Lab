%%%%%%%% Down_shift.m %%%%%%%%%%%

function temp4 = Down_shift( curr )
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
    
    if(i==2)
        temp4 = curr; %no down shift of blank is possible
    else
        ele = curr(i+1,j);
        curr(i+1,j) = curr(i,j);
        curr(i,j) = ele ;
        temp4 = curr;
    end


end
