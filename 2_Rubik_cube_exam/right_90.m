function final_sub_cube = right_90(sub_cube)
  final_sub_cube = sub_cube;
  
  final_sub_cube(5) = sub_cube(1);
  final_sub_cube(2) = sub_cube(5);
  final_sub_cube(6) = sub_cube(2);
  final_sub_cube(1) = sub_cube(6);
  
    