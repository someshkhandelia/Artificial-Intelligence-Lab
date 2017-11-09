function d2 = get_dist_back_face(g_f1,g_f3,c_f1,c_f3)
  d2 = 0;
  if (g_f1(2)==c_f1(2))
    d2 = d2+0;
  elseif ( mod(g_f1(2),c_f1(2))==0 || mod(c_f1(2),g_f1(2))==0)
    d2=d2+2;
  else
    d2=d2+1;
  end
  
  if (g_f3(2)==c_f3(2))
    d2 = d2+0;
  elseif ( mod(g_f3(2),c_f3(2))==0 || mod(c_f3(2),g_f3(2))==0)
    d2=d2+2;
  else
    d2=d2+1;    
  end
  
  