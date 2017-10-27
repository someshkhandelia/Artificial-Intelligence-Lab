%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Traversing AND-OR Graph using MATLAB  %%%%%%%%%%%%%%%%%%%

%%%%%%%% min_wt.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function wt = min_wt(node, adj, ao_mat, leaves, weights, n)
    wt = get_own_wt(node, adj, ao_mat, leaves, weights, n);
    if has_sibling(node, ao_mat, n)
        for i = 1:n
            if ao_mat(node,i) == 1
                wt = wt + get_own_wt(i, adj, ao_mat, leaves, weights, n);
            end
        end
    end
end
                