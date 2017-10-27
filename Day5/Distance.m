%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Perform Steepest Ascent Hill Climbing using MATLAB  %%%%%%%%%%%%%%%%%%%

%%%%%%%% Distance.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function total_dist = Distance(curr, goal)
 
    total_dist = 0;
    for i = 1:3
        for j = 1:3
            ele = curr(i,j);
            flag = 0;
            x_index = 0;
            y_index = 0;
            for k = 1:3
                for l = 1:3
                    if ele == goal(k,l)
                        x_index = k;
                        y_index = l;
                        flag = 1;
                        break;
                    end
                end
                if flag == 1
                    break;
                end
            end
            x1 = i;
            y1 = j;
            x2 = x_index;
            y2 = y_index;

            dist = sqrt((x1-x2)^2 + (y1-y2)^2);
            total_dist = total_dist + dist;

        end
    end


end

