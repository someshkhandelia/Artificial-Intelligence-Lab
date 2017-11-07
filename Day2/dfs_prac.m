%%%%%%%%%%%%%%%%%%%%%%%%%%DAY 2%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Perform DFS using MATLAB  %%%%%%%%%%%%%%%%%%%

% Program to perform DFS of a tree whose adjacency matrix is given
n=6;
my_tree = [0 1 1 0 0 0; 0 0 0 1 0 0; 0 0 0 0 1 1; 0 0 0 0 0 0; 0 0 0 0 0 0; 0 0 0 0 0 0];

fprintf('\nThe tree consists of %d nodes, numbered 1 to %d\n', n, n);
prompt = 'Enter node you are looking for: ';
node = input(prompt);

i = 1;
j = 1;
flag = 0;
stack = java.util.Stack();
stack.push(i);

while(j<=n)
  
  if(i==node)
    break;
  end
  
  if(my_tree(i,j)==1)
    stack.push(j);
    my_tree(i,j)=0;
    i=j;
    j=1;
  else
    j=j+1;
  end
  
  if(j>n)
    stack.pop();
    i = stack.pop();
    stack.push(i);%curr node under consideration
    j=1;
  end

end    
disp(stack);