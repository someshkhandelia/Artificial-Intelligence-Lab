function d3 = get_dist_top_face(g_f1,g_f2,g_b1,g_b2,c_f1,c_f2,c_b1,c_b2)
  d3 = 0;
  if (g_f1(3)==c_f1(3))
    d3 = d3+0;
  elseif ( mod(g_f1(3),c_f1(3))==0 || mod(c_f1(3),g_f1(3))==0)
    d3=d3+2;
  else
    d3=d3+1;    
  end
  
  if (g_f2(3)==c_f2(3))
    d3 = d3+0;
  elseif ( mod(g_f2(3),c_f2(3))==0 || mod(c_f2(3),g_f2(3))==0)
    d3=d3+2;
  else
    d3=d3+1;      
  end
  
  if (g_b1(3)==c_b1(3))
    d3 = d3+0;
  elseif ( mod(g_b1(3),c_b1(3))==0 || mod(c_b1(3),g_b1(3))==0)
    d3=d3+2;
  else
    d3=d3+1;      
  end
  
  if (g_b2(3)==c_b2(3))
    d3 = d3+0;
  elseif ( mod(g_b2(3),c_b2(3))==0 || mod(c_b2(3),g_b2(3))==0)
    d3=d3+2;
  else
    d3=d3+1;      
  end