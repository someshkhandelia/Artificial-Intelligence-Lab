%%%% GOAL STATE %%%%%%%%%%%
g_f1 = [13 26 7 14 22 11];
g_f3 = [13 26 7 14 22 11];
%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% INITIAL STATE %%%%%%
c_f1 = [7 14 26 13 22 11];
c_f3 = [26 13 7 14 11 22];

%%%%%%%%%%%%%%%%%%%%%%%%%
%% IN THE GOAL STATE AND INITIAL STATE: 
%% LEGEND :(VALUES) BLUE-13,RED-26,WHITE-7,ORANGE-14,GREEN-11,YELLOW-22
%% LEGEND :(INDICES) FRONT-1,BACK-2,TOP-3,DOWN-4,RIGHT-5,LEFT-6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
total_dist = get_total_dist(g_f1,g_f3,c_f1,c_f3);
%% we will generate moves randomly:
%% 1- top_90
%% 2- down_90
%% 3- right_90
%% 4- left_90
%% similarly move will be applied to a random sub-cube
%% Subcubes are:
%%    Front face: 
%%      1           
%%      3           

while(total_dist>0)
  rand_move = randperm(4,1);
  rand_cube = randperm(2,1); 
      
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
    
    total_dist_1 = get_total_dist(g_f1,g_f3,sub_cube,c_f3);
    
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_f1 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);      
    end
       
    
  elseif rand_cube==2
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
    
    total_dist_1 = get_total_dist(g_f1,g_f3,c_f1,sub_cube);
  
    if total_dist_1 < total_dist
      total_dist = total_dist_1;
      c_f3 = sub_cube;
      printf('\nMove made: %d on subcube: %d \n',rand_move,rand_cube);
      fflush(stdout);
    end
    
  
  end
       
end

if total_dist == 0
  printf('\nGOAL REACHED\n');
  fflush(stdout);
end
  
    


  

 