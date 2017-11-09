function total_dist = get_total_dist(g_f1,g_f3,c_f1,c_f3)
  
  d1 = get_dist_front_face(g_f1,g_f3,c_f1,c_f3);
  d2 = get_dist_back_face(g_f1,g_f3,c_f1,c_f3);
  d3 = get_dist_top_face(g_f1,g_f3,c_f1,c_f3);
  d4 = get_dist_down_face(g_f1,g_f3,c_f1,c_f3);
  d5 = get_dist_right_face(g_f1,g_f3,c_f1,c_f3);
  d6 = get_dist_left_face(g_f1,g_f3,c_f1,c_f3);
  total_dist = d1 + d2 + d3 + d4 + d5 + d6;