function d5 = get_dist_right_face(g_f2,g_f4,g_b1,g_b3,c_f2,c_f4,c_b1,c_b3)
  d5 = 0;
  if (g_f2(5)==c_f2(5))
    d5 = d5+0;
  elseif ( mod(g_f2(5),c_f2(5))==0 || mod(c_f2(5),g_f2(5))==0)
    d5=d5+2;
  else
    d5=d5+1;            
  end
  
  if (g_f4(5)==c_f4(5))
    d5 = d5+0;
  elseif ( mod(g_f4(5),c_f4(5))==0 || mod(c_f4(5),g_f4(5))==0)
    d5=d5+2;
  else
    d5=d5+1;              
  end
  
  if (g_b1(6)==c_b1(6))
    d5 = d5+0;
  elseif ( mod(g_b1(6),c_b1(6))==0 || mod(c_b1(6),g_b1(6))==0)
    d5=d5+2;
  else
    d5=d5+1;              
  end
  
  if (g_b3(6)==c_b3(6))
    d5 = d5+0;
  elseif ( mod(g_b3(6),c_b3(6))==0 || mod(c_b3(6),g_b3(6))==0)
    d5=d5+2;
  else
    d5=d5+1;              
  end