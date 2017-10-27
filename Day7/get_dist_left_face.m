function d6 = get_dist_left_face(g_f1,g_f3,g_b2,g_b4,c_f1,c_f3,c_b2,c_b4)
  d6 = 0;
  if (g_f1(6)==c_f1(6))
    d6 = d6+0;
  elseif ( mod(g_f1(6),c_f1(6))==0 || mod(c_f1(6),g_f1(6))==0)
    d6=d6+2;
  else
    d6=d6+1;                
  end
  
  if (g_b2(5)==c_b2(5))
    d6 = d6+0;
  elseif ( mod(g_b2(5),c_b2(5))==0 || mod(c_b2(5),g_b2(5))==0)
    d6=d6+2;
  else
    d6=d6+1;                  
  end
  
  if (g_f3(6)==c_f3(6))
    d6 = d6+0;
  elseif ( mod(g_f3(6),c_f3(6))==0 || mod(c_f3(6),g_f3(6))==0)
    d6=d6+2;
  else
    d6=d6+1;                  
  end
  
  if (g_b4(5)==c_b4(5))
    d6 = d6+0;
  elseif ( mod(g_b4(5),c_b4(5))==0 || mod(c_b4(5),g_b4(5))==0)
    d6=d6+2;
  else
    d6=d6+1;                  
  end