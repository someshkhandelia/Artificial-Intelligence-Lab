function d5 = get_dist_right_face(g_f1,g_f3,c_f1,c_f3)
  d5 = 0;
  if (g_f1(5)==c_f1(5))
    d5 = d5+0;
  elseif ( mod(g_f1(5),c_f1(5))==0 || mod(c_f1(5),g_f1(5))==0)
    d5=d5+2;
  else
    d5=d5+1;
  end
  
  if (g_f3(5)==c_f3(5))
    d5 = d5+0;
  elseif ( mod(g_f3(5),c_f3(5))==0 || mod(c_f3(5),g_f3(5))==0)
    d5=d5+2;
  else
    d5=d5+1;    
  end
  