function d4 = get_dist_down_face(g_f1,g_f3,c_f1,c_f3)
  d4 = 0;
  
  if (g_f3(4)==c_f3(4))
    d4 = d4+0;
  elseif ( mod(g_f3(4),c_f3(4))==0 || mod(c_f3(4),g_f3(4))==0)
    d4=d4+2;
  else
    d4=d4+1;    
  end
  
  