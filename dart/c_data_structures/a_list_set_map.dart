/*
  Numbers (int, double)
  Strings (String)
  Booleans (bool)
  Records/Tuple ((value1, value2))
  Lists (List, also known as arrays)
  Sets (Set)
  Maps (Map)
  Runes (Runes; often replaced by the characters API)
  Symbols (Symbol)
  The value null (Null)
*/ 



class Student{
  var name;
  var age;
  Student(var name, var age){
    this.name = name;
    this.age = age;
  }
}

void main(){

  //----- LIST ----

  List l1 = [2,3,4,"Hello string"];
  print(l1);
  print(l1[2]);
  
  List<int> l2 = [4,2,6,3,2];


  l1.forEach((e)=>{print(e)});
  

  //------- SET -------------

  var ss1 = Student('tom',10);
  var ss2 = Student('tom',10);
  Set<Student> s1 = {Student('tom',10),Student('tom',10),ss1,ss2};
  for(var v in s1){
    print(v);
  }

  //--------- MAP ------------
  
  Map<String,int>  marks = {
    'Ror':10,
    'Tom':16,
    'John':12
  };

  void find_marks(String name){
    if (marks[name] == null)
      print('Key does\'t exists');
    else
      print(marks[name]);
  }

  

}