%%%%%%%%%%%%%%%%%%%%%%%%%% DAY 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%  Traversing AND-OR Graph using MATLAB  %%%%%%%%%%%%%%%%%%%

%%%%%%%% get_own_wt.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function wt = get_own_wt(node, adj, ao_mat, leaves, weights, n)
    pos = is_leaf(node, leaves);
    if pos
        wt = weights(pos);
    else
        wt = intmax;
        for i = 1:n
            if adj(node,i) == 1
                temp = min_wt(i, adj, ao_mat, leaves, weights, n);
                if temp < wt
                    wt = temp;
                end
            end
        end
    end
end
        