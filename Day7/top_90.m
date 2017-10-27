function final_sub_cube = top_90(sub_cube)
  final_sub_cube = sub_cube;
  
  final_sub_cube(3) = sub_cube(1);
  final_sub_cube(2) = sub_cube(3);
  final_sub_cube(4) = sub_cube(2);
  final_sub_cube(1) = sub_cube(4);
  