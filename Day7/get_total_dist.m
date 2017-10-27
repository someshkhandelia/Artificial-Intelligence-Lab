function total_dist = get_total_dist(g_f1,g_f2,g_f3,g_f4,g_b1,g_b2,g_b3,g_b4,c_f1,c_f2,c_f3,c_f4,c_b1,c_b2,c_b3,c_b4)
  
  d1 = get_dist_front_face(g_f1,g_f2,g_f3,g_f4,c_f1,c_f2,c_f3,c_f4);
  d2 = get_dist_back_face(g_b1,g_b2,g_b3,g_b4,c_b1,c_b2,c_b3,c_b4);
  d3 = get_dist_top_face(g_f1,g_f2,g_b1,g_b2,c_f1,c_f2,c_b1,c_b2);
  d4 = get_dist_down_face(g_f3,g_f4,g_b3,g_b4,c_f3,c_f4,c_b3,c_b4);
  d5 = get_dist_right_face(g_f2,g_f4,g_b1,g_b3,c_f2,c_f4,c_b1,c_b3);
  d6 = get_dist_left_face(g_f1,g_f3,g_b2,g_b4,c_f1,c_f3,c_b2,c_b4);
  total_dist = d1 + d2 + d3 + d4 + d5 + d6;