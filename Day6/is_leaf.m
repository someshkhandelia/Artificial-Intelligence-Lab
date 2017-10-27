%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Traversing AND-OR Graph using MATLAB  %%%%%%%%%%%%%%%%%%%

%%%%%%%% is_leaf.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function flag = is_leaf(node, leaves)
    flag = 0;
    len = length(leaves);
    for i = 1:len
        if node == leaves(i)
            flag = i;
            break;
        end
    end
end