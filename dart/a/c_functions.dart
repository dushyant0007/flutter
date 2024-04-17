 

// called positional arguments
void printName(String name){
  name = 'Jenny';
  print("River "+name);
}

String rtn_Name(){
  return "The River";
}

//  Records / Tuples
(int, String) rtn_place(){
  return (3,' London');
}

({int age,String name}) rtn_stuff(){
  return (name:'Ayahs',age:24);
}

// returning rulable
String? find_if_ok(int n){
  if (n==10)
    return 'ok';
  else
    return null;
}

// positional args + named arguments
void everything(String city,{required String name, required int age,String greeting = 'Hi!', int? money}){
  print(greeting+" "+name+" "+age.toString()+"  from $city");
}

// return function
Function rtn_fun(){
  int a = 99;
  return (){print('YOO $a');};
}

// arrow functions // only single statements
String arrow_a(int x) => "${2*x} BUDDY_A";
  
void main(){

  everything('tokyo',name: 'Bobby', age: 19,greeting: 'Hello');

  // (int,String) tpl = rtn_place();
  var tpl = rtn_place(); // same thing
  print(tpl.$2);

  var (the_int,the_str) = rtn_place();
  print(the_int.toString()+the_str);

  var fun_rtn = rtn_stuff();
  print(fun_rtn.name);
  print(fun_rtn.age);

  // function returning function then calling that function  
  rtn_fun()();

  Function sv_fun = rtn_fun();
  sv_fun();


}