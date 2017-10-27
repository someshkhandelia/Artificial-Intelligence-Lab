%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Traversing AND-OR Graph using MATLAB  %%%%%%%%%%%%%%%%%%%

%%%%%%%% has_sibling.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function flag = has_sibling(node, ao_mat, n)
    flag = 0;
    for i = 1:n
        if ao_mat(node, i) == 1
            flag = 1;
            break;
        end
    end

end
