% Program to perform Iterative Deepening DFS of a tree whose adjacency matrix is given

n = 6;

my_tree = [0 1 1 0 0 0; 0 0 0 1 0 0; 0 0 0 0 1 1; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];
%my_tree = [0 1 1 0 0 0 0 0 0; 0 0 0 1 1 0 0 0 0; 0 0 0 0 0 0 0 1 1; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 1 1 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0];  

fprintf('\nThe tree consists of %d nodes, numbered 1 to %d\n', n, n);
prompt = '\nEnter node you are looking for: ';
node = input(prompt);

i = 1;
j = 1;
flag = 0;
stack = java.util.Stack();

max_depth = n;
depth_counter = 0;
flag2 = 0;

while(depth_counter <= max_depth && flag == 0 && flag2 == 0)
    i = 1;
    j = 1;
    stack = java.util.Stack();
    depth_counter = depth_counter+1;
    curr_depth = 0;
    
    while(i <= n && curr_depth < depth_counter && flag == 0 && flag2 == 0)
        
        if(j > n)
            %If stack is not empty, pop from stack and store in i
            %Otherwise we have covered all the nodes and thus the required
            %node is not found
            if(~stack.empty())
                j = i+1;
                i = stack.pop();
            else
                flag2 = 1;
                break;
            end
            curr_depth = curr_depth-1;
        end
        
        while(j <= n && curr_depth < depth_counter)
            if(i == node)
                stack.push(i)
                flag = 1;
                break;
            end
            if(my_tree(i,j) == 1 && j <= n)
                %push i into stack
                stack.push(i);
                i = j;
                j = 1;
                curr_depth = curr_depth+1;
                continue; 
            end
            
            if(j >= n)
                %If stack is not empty, pop from stack and store in i
                %Otherwise we have covered all the nodes and thus the required
                %node is not found
                if(~stack.empty())
                    j = i+1;
                    i = stack.pop();
                else
                    flag2 = 1;
                    break;
                end
                curr_depth = curr_depth-1;
                continue;
            end
            j=j+1;

        end
    end
end
     
if(flag == 1 && flag2 == 0)
    fprintf('\nNode was found and path is below(read left to right):\n');
    disp(stack);
else
    fprintf('\nNode was not found\n');
end
