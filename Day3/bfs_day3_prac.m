
%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Perform BFS using MATLAB  %%%%%%%%%%%%%%%%%%%


n = 6;

my_tree = [0 1 1 0 0 0; 0 0 0 1 0 0; 0 0 0 0 1 1; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];

fprintf('\nThe tree consists of %d nodes, numbered 1 to %d\n', n, n);

prompt = 'Enter source node: ';
source = input(prompt);

prompt = 'Enter destination node: ';
dest = input(prompt);

temp_tree = my_tree ;
i = source;

my_queue = java.util.PriorityQueue();
my_queue.add(i);

fprintf('The nodes were traversed as follows :\n');

while(~my_queue.isEmpty())
        
    curr_node = my_queue.remove();
    fprintf('%d ',curr_node);
    
    if(curr_node==dest)
        break
    end
    
    
    for j=1:n
        temp_tree(j,curr_node)=0;
    end
    
    curr_row = curr_node;
   
    for j=1:n
        if(temp_tree(curr_row,j)==1 && ~my_queue.contains(j))          
            my_queue.add(j);
        end
    end
               
end
