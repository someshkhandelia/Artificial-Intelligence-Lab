function d4 = get_dist_down_face(g_f3,g_f4,g_b3,g_b4,c_f3,c_f4,c_b3,c_b4)
  d4 = 0;
  if (g_b3(4)==c_b3(4))
    d4 = d4+0;
  elseif ( mod(g_b3(4),c_b3(4))==0 || mod(c_b3(4),g_b3(4))==0)
    d4=d4+2;
  else
    d4=d4+1;        
  end
  
  if (g_b4(4)==c_b4(4))
    d4 = d4+0;
  elseif ( mod(g_b4(4),c_b4(4))==0 || mod(c_b4(4),g_b4(4))==0)
    d4=d4+2;
  else
    d4=d4+1;          
  end
  
  if (g_f3(4)==c_f3(4))
    d4 = d4+0;
  elseif ( mod(g_f3(4),c_f3(4))==0 || mod(c_f3(4),g_f3(4))==0)
    d4=d4+2;
  else
    d4=d4+1;          
  end
  
  if (g_f4(4)==c_f4(4))
    d4 = d4+0;
  elseif ( mod(g_f4(4),c_f4(4))==0 || mod(c_f4(4),g_f4(4))==0)
    d4=d4+2;
  else
    d4=d4+1;          
  end