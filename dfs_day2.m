% enter a tree in adjacency matrix format
% find a node and print the path to it

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

prompt = 'Enter node you are looking for: ';
node = input(prompt);
i=1;
j=1;
flag = 0;
stack = java.util.Stack();
while(i<=n)
    if(i == 1 && j>n)
        break;
    end
    while(j<=n)
        if(my_tree(i,j)==1 && j<=n)
            %push i into stack
            stack.push(i);
            i = j;
            j = 1;
            if(i == node)
                flag = 1;
                break;
            end
            continue; 
        end
        if(j >= n)
            j = i+1;
            %pop stack and store in i
            i = stack.pop();
            continue;
        end
        j=j+1;
        
    end
    if(flag == 1)
        break;
    end
end
                
if(flag == 1)
    stack.push(node);
    fprintf('\nnode was found and path is below(read left to right):\n');
    disp(stack);
else
    fprintf('\nnode was not found');
end





   