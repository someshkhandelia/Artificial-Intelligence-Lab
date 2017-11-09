%%%%%%%% Distance.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function total_dist = Distance(curr, goal)
 
    total_dist = 0;
    for i = 1:2
        for j = 1:2
            ele = curr(i,j);
            flag = 0;
            x_index = 0;
            y_index = 0;
            for k = 1:2
                for l = 1:2
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

            if((x1 ~= x2) || (y1 ~= y2))
                total_dist = total_dist+1;
            end
            %total_dist = total_dist + dist;

        end
    end


end