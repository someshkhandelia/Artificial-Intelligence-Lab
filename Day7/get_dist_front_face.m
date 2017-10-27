function d1 = get_dist_front_face(g_f1,g_f2,g_f3,g_f4,c_f1,c_f2,c_f3,c_f4)
  d1 = 0;
  if (g_f1(1)==c_f1(1))
    d1 = d1+0;
  elseif ( mod(g_f1(1),c_f1(1))==0 || mod(c_f1(1),g_f1(1))==0)
    d1=d1+2;
  else
    d1=d1+1;
  end
  
  if (g_f2(1)==c_f2(1))
    d1 = d1+0;
  elseif ( mod(g_f2(1),c_f2(1))==0 || mod(c_f2(1),g_f2(1))==0)
    d1=d1+2;
  else
    d1=d1+1;  
  end
  
  if (g_f3(1)==c_f3(1))
    d1 = d1+0;
  elseif ( mod(g_f3(1),c_f3(1))==0 || mod(c_f3(1),g_f3(1))==0)
    d1=d1+2;
  else
    d1=d1+1;  
  end
  
  if (g_f4(1)==c_f4(1))
    d1 = d1+0;
  elseif ( mod(g_f4(1),c_f4(1))==0 || mod(c_f4(1),g_f4(1))==0)
    d1=d1+2;
  else
    d1=d1+1;  
  end
  