function d2 = get_dist_back_bace(g_b1,g_b2,g_b3,g_b4,c_b1,c_b2,c_b3,c_b4)
  d2 = 0;
  if (g_b1(1)==c_b1(1))
    d2 = d2+0;
  elseif ( mod(g_b1(1),c_b1(1))==0 || mod(c_b1(1),g_b1(1))==0)
    d2=d2+2;
  else
    d2=d2+1;  
  end
  
  if (g_b2(1)==c_b2(1))
    d2 = d2+0;
  elseif ( mod(g_b2(1),c_b2(1))==0 || mod(c_b2(1),g_b2(1))==0)
    d2=d2+2;
  else
    d2=d2+1;    
  end
  
  if (g_b3(1)==c_b3(1))
    d2 = d2+0;
  elseif ( mod(g_b3(1),c_b3(1))==0 || mod(c_b3(1),g_b3(1))==0)
    d2=d2+2;
  else
    d2=d2+1;    
  end
  
  if (g_b4(1)==c_b4(1))
    d2 = d2+0;
  elseif ( mod(g_b4(1),c_b4(1))==0 || mod(c_b4(1),g_b4(1))==0)
    d2=d2+2;
  else
    d2=d2+1;    
  end