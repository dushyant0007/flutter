
import 'dart:ffi';

void printName(){
  print("River");
}

String rtn_Name(){
  return "The River";
}

//  Records / Tuples
(int, String) rtn_place(){
  return (3,'London');
}


void main(){
  printName();
  print(rtn_Name());

  var tpl = rtn_place();
  print(tpl);

}