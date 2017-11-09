%%%%%%%%%%%%%%%%%%  Solve 3 puzzle problem using Steepest Ascent Hill Climbing %%%%%%%%%%%%%%%%%%%

%%%%%%%% Steepest_ascent.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

initial = [3 2; 1 -1];
goal = [-1 1; 2 3];

curr = initial;
flag = 0;

while(~isequal(curr, goal))

    dist_ini = Distance(curr, goal);
    temp1 = Right_shift(curr);
    temp2 = Left_shift(curr);
    temp3 = Up_shift(curr);
    temp4 = Down_shift(curr);

    dist_1 = Distance(temp1, goal);
    dist_2 = Distance(temp2, goal);
    dist_3 = Distance(temp3, goal);
    dist_4 = Distance(temp4, goal);
    

    min_dist_1 = min(dist_1,dist_2);
    min_dist_2 = min(dist_3,dist_4);
    
    min_dist = min(min_dist_1,min_dist_2);
    
    %fprintf('%d %d\n', min_dist, dist_ini);
    
    if(min_dist >= dist_ini)
        fprintf('Goal not reachable\n');
        flag = 1;
        break;           
    elseif(min_dist == dist_1)
        curr = temp1;
        fprintf('\nRight Shift performed\n');
        disp(curr);
    
    elseif(min_dist == dist_2)
        curr = temp2;
        fprintf('\nLeft Shift performed\n');
        disp(curr);
    
    elseif(min_dist == dist_3)
        curr = temp3;
        fprintf('\nUp Shift performed\n');
        disp(curr);
    
    elseif(min_dist == dist_4)
        curr = temp4;
        fprintf('\nDown Shift performed\n');
        disp(curr);
    end
    
        
end 

if(flag == 0)
    fprintf('\nGoal reached\n');
    disp(curr);
end
        