function d3 = get_dist_top_face(g_f1,g_f3,c_f1,c_f3)
  d3 = 0;
  if (g_f1(1)==c_f1(1))
    d3 = d3+0;
  elseif ( mod(g_f1(1),c_f1(1))==0 || mod(c_f1(1),g_f1(1))==0)
    d3=d3+2;
  else
    d3=d3+1;    
  end
  
  
  