%%%%%%%%%%%%%%%%%%%%%%%%%%  DAY 4  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Perform Iterative Deepening DFS using MATLAB  %%%%%%%%%%%%%%%%%%%

n = 6;

my_tree = [0 1 1 0 0 0; 0 0 0 1 0 0; 0 0 0 0 1 1; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];

fprintf('\nThe tree consists of %d nodes, numbered 1 to %d\n', n, n);
prompt = '\nEnter node you are looking for: ';
node = input(prompt);

i = 1;
j = 1;
stack = java.util.Stack();
stack.push(i);
disp(stack);
curr_depth = 1;
max_depth = 2;
curr_tree = my_tree;

while(j<=n)
  
  if(i==node)
    break;
  end
  if(curr_depth==max_depth)
    curr_depth = 1;
    i = 1;
    j = 1;
    stack = java.util.Stack();
    stack.push(i);
    disp(stack);
  end
  if(curr_depth==0)
    curr_depth = 1;
    max_depth = max_depth + 1;
    curr_tree = my_tree;
    i = 1;
    j = 1;
    stack = java.util.Stack();
    stack.push(i);
    disp(stack);
  end
  if(curr_tree(i,j)==1)
    stack.push(j);
    curr_depth = curr_depth + 1;
    curr_tree(i,j)=0;
    i=j;
    j=1;
    disp(stack);
  else
    j=j+1;
  end
  
  if(j>n)
    stack.pop();
    curr_depth = curr_depth - 1;
    if(~curr_depth==0)
        i = stack.pop();
        stack.push(i);%curr node under consideration
        j=1;
        disp(stack);
    else
        j=1;
        continue;
    end
    
  end

end  
fprintf('\nfinal stack:\n');
disp(stack);
