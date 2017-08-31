% enter a tree in adjacency matrix format
% find a node and print the path to it

prompt = 'Enter no. of nodes:  ';
n = input(prompt);

%my_tree = zeros(n,n);

% fprintf('Enter the adjacency matrix\n ');
% fprintf('Enter 1 if j is a child of i in (i,j) else 0\n ');
% 
% for i=1:n
%     for j=1:n
%         prompt = 'Enter matrix element:  ';
%         my_tree(i,j)= input(prompt);
%     end
% end
my_tree = [0 1 1 0 0 0; 0 0 0 1 0 0; 0 0 0 0 1 0; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];

prompt = 'Enter node you are looking for: ';
node = input(prompt);
i=1;
j=1;
flag = 0;
stack = java.util.Stack();

max_depth = n;
depth_counter = 0;
%curr_depth = 0;
flag2=0;

while(depth_counter<=max_depth && flag==0 && flag2==0)
    i=1;
    j=1;
    stack = java.util.Stack();
    depth_counter = depth_counter+1;
    curr_depth = 0;
    
    while(i<=n && curr_depth<depth_counter && flag==0)
        
        if(i == 1 && j>n)
            flag2=1;
            break;
        end
        
        while(j<=n && flag==0)
            if(my_tree(i,j)==1 && j<=n && curr_depth<depth_counter)
                %push i into stack
                stack.push(i);
                
                fprintf('\njust pushed,current stack: ');
                disp(stack);
                
                if(i == node)
                    flag = 1;
                    break;
                end
                
                i = j;
                j = 1;
                
                curr_depth=curr_depth+1;
                
                continue; 
            end
            if(curr_depth >= depth_counter)
                break;
            end
            
            if(j >= n)
                j = i+1;
                %pop stack and store in i
                i = stack.pop();
                fprintf('\njust popped,current stack: ');
                disp(stack);
                curr_depth = curr_depth-1;
                continue;
            end
            j=j+1;

        end
        
        if(flag == 1)
            break;
        end
        
    end
end
                
if(flag == 1 && flag2 == 0)
    stack.push(node);
    fprintf('\nnode was found and path is below(read left to right):\n');
    disp(stack);
else
    fprintf('\nnode was not found');
end





   