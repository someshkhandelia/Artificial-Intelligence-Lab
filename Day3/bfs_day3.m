
%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Perform BFS using MATLAB  %%%%%%%%%%%%%%%%%%%


prompt = 'Enter no. of nodes:  ';
n = input(prompt);

my_tree = zeros(n,n);

fprintf('Enter the adjacency matrix\n ');
fprintf('Enter 1 if j is a child of i in (i,j) else 0\n ');

for i=1:n
    for j=1:n
        prompt = 'Enter matrix element:  ';
        my_tree(i,j)= input(prompt);
        
    end
end

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
