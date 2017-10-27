%%%% GOAL STATE %%%%%%%%%%%
g_f1 = [13 26 7 14 22 11];
g_f2 = [13 26 7 14 22 11];
g_f3 = [13 26 7 14 22 11];
g_f4 = [13 26 7 14 22 11];
g_b1 = [26 13 7 14 11 22];
g_b2 = [26 13 7 14 11 22];
g_b3 = [26 13 7 14 11 22];
g_b4 = [26 13 7 14 11 22];
%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% INITIAL STATE %%%%%%
c_f1 = [7 14 26 13 22 11];
c_f2 = [14 7 13 26 22 11];
c_f3 = [26 13 7 14 11 22];
c_f4 = [11 22 7 14 13 26];
c_b1 = [22 11 7 14 26 13];
c_b2 = [13 26 7 14 22 11];
c_b3 = [14 7 26 13 11 22];
c_b4 = [7 14 13 26 11 22];
%%%%%%%%%%%%%%%%%%%%%%%%%
%% IN THE GOAL STATE AND INITIAL STATE: 
%% LEGEND :(VALUES) BLUE-13,RED-26,WHITE-7,ORANGE-14,GREEN-11,YELLOW-22
%% LEGEND :(INDICES) FRONT-1,BACK-2,TOP-3,DOWN-4,RIGHT-5,LEFT-6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
total_dist = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,c_f2,c_f3,c_f4,c_b1,c_b2,c_b3,c_b4);
%% we will generate moves randomly:
%% 1- top_90
%% 2- down_90
%% 3- right_90
%% 4- left_90
%% similarly move will be applied to a random sub-cube
%% Subcubes are:
%%    Front face:   Back face:
%%      1 2           5 6
%%      3 4           7 8

while(total_dist>0)
  rand_move = randperm(4,1);
  rand_cube = randperm(8,1); 
      
  if rand_cube==1
    sub_cube = c_f1;
    if rand_move==1
      sub_cube = top_90(sub_cube);
    elseif rand_move==2
      sub_cube = down_90(sub_cube);
    elseif rand_move==3
      sub_cube = right_90(sub_cube);
    elseif rand_move==4
      sub_cube = left_90(sub_cube);
    end
    
    total_dist_1 = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,sub_cube,c_f2,c_f3,c_f4,c_b1,c_b2,c_b3,c_b4);
    
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_f1 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);      
    end
      
      
  elseif rand_cube==2
    sub_cube = c_f2;
    if rand_move==1
      sub_cube = top_90(sub_cube);
    elseif rand_move==2
      sub_cube = down_90(sub_cube);
    elseif rand_move==3
      sub_cube = right_90(sub_cube);
    elseif rand_move==4
      sub_cube = left_90(sub_cube);
    end
    
    total_dist_1 = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,sub_cube,c_f3,c_f4,c_b1,c_b2,c_b3,c_b4);
    
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_f2 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);
    end
    
  elseif rand_cube==3
    sub_cube = c_f3;
    if rand_move==1
      sub_cube = top_90(sub_cube);
    elseif rand_move==2
      sub_cube = down_90(sub_cube);
    elseif rand_move==3
      sub_cube = right_90(sub_cube);
    elseif rand_move==4
      sub_cube = left_90(sub_cube);
    end
    
    total_dist_1 = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,c_f2,sub_cube,c_f4,c_b1,c_b2,c_b3,c_b4);
  
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_f3 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);
    end
    
  elseif rand_cube==4
    sub_cube = c_f4;
    if rand_move==1
      sub_cube = top_90(sub_cube);
    elseif rand_move==2
      sub_cube = down_90(sub_cube);
    elseif rand_move==3
      sub_cube = right_90(sub_cube);
    elseif rand_move==4
      sub_cube = left_90(sub_cube);
    end
    
    total_dist_1 = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,c_f2,c_f3,sub_cube,c_b1,c_b2,c_b3,c_b4);
    
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_f4 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);
    end
    
  elseif rand_cube==5
    sub_cube = c_b1;
    if rand_move==1
      sub_cube = top_90(sub_cube);
    elseif rand_move==2
      sub_cube = down_90(sub_cube);
    elseif rand_move==3
      sub_cube = right_90(sub_cube);
    elseif rand_move==4
      sub_cube = left_90(sub_cube);
    end
    
    total_dist_1 = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,c_f2,c_f3,c_f4,sub_cube,c_b2,c_b3,c_b4);
    
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_b1 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);
    end
    
  elseif rand_cube==6
    sub_cube = c_b2;
    if rand_move==1
      sub_cube = top_90(sub_cube);
    elseif rand_move==2
      sub_cube = down_90(sub_cube);
    elseif rand_move==3
      sub_cube = right_90(sub_cube);
    elseif rand_move==4
      sub_cube = left_90(sub_cube);
    end
    
    total_dist_1 = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,c_f2,c_f3,c_f4,c_b1,sub_cube,c_b3,c_b4);
    
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_b2 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);
    end
    
  elseif rand_cube==7
    sub_cube = c_b3;
    if rand_move==1
      sub_cube = top_90(sub_cube);
    elseif rand_move==2
      sub_cube = down_90(sub_cube);
    elseif rand_move==3
      sub_cube = right_90(sub_cube);
    elseif rand_move==4
      sub_cube = left_90(sub_cube);
    end
    
    total_dist_1 = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,c_f2,c_f3,c_f4,c_b1,c_b2,sub_cube,c_b4);
    
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_b3 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);
    end
    
  elseif rand_cube==8
    sub_cube = c_b4;
    if rand_move==1
      sub_cube = top_90(sub_cube);
    elseif rand_move==2
      sub_cube = down_90(sub_cube);
    elseif rand_move==3
      sub_cube = right_90(sub_cube);
    elseif rand_move==4
      sub_cube = left_90(sub_cube);
    end
    
    total_dist_1 = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,c_f2,c_f3,c_f4,c_b1,c_b2,c_b3,sub_cube);
    
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_b4 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);
    end
    
  end
       
end

if total_dist == 0
  printf('\nGOAL REACHED\n');
  fflush(stdout);
end
  
    


  

 