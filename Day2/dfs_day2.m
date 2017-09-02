% Program to perform DFS of a tree whose adjacency matrix is given

n = 6;

my_tree = [0 1 1 0 0 0; 0 0 0 1 0 0; 0 0 0 0 1 1; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];
%my_tree = [0 1 1 0 0 0 0 0 0; 0 0 0 1 1 0 0 0 0; 0 0 0 0 0 0 0 1 1; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 1 1 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0];  

fprintf('\nThe tree consists of %d nodes, numbered 1 to %d\n', n, n);
prompt = 'Enter node you are looking for: ';
node = input(prompt);

i = 1;
j = 1;
flag = 0;
stack = java.util.Stack();

while(i<=n)
    if(j > n)
        if(~stack.empty())
            j = i+1;
            i = stack.pop();
        else
            break;
        end
    end
    while(j<=n)
        if(i == node)
            flag = 1;
            stack.push(i);
            break;
        end
        if(my_tree(i,j) == 1 && j <= n)
            %push i into stack
            stack.push(i);
            i = j;
            j = 1;
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
                j = j+1;        
                break;
            end
            continue;
        end
        j = j+1;
        
    end
    if(flag == 1)
        break;
    end
end
                
if(flag == 1)
    fprintf('\nNode was found and path is below(read left to right):\n');
    disp(stack);
else
    fprintf('\nNode was not found');
end
