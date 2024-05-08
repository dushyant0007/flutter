
// ignore_for_file: unused_local_variable

void main(List<String> args){

  var a = 10/2; // return double
  var b = 10 ~/ 2; // return int

  //dart start calculating form left to right when priority of all is same
  print(a+b+10);

  // unary prefix
  int num = 12;

  // first subtract 1 from num, then do assignment
  int m_num = --num; 

  // it will return a new -ve, not mutate
  print(-num); print(!true);

  // unary postfix
  // num is incremented by 1, then assigned
  m_num = num++; print(m_num);

// ---------------------------------------

  // bitwise
  print(1 & 2); // AND
  print(1 | 2); // OR
  print(1^4); // EXOR
  print(1<<3); // left Shift  
 

} 