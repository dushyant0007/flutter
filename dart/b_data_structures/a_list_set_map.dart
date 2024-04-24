// ignore_for_file: unused_local_variable

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

// Object: The superclass of all Dart classes except Null.
// Enum: The superclass of all enums.



class Student{
  var name;
  var age;
  Student(var name, var age){
    this.name = name;
    this.age = age;
  }
}

void main(){

  // ------------ NUMBERS -------------
    // Both int and double are subtypes of num.
    // So, You can also declare a variable as a num. If you do this, the variable can have both integer and double values.
    num n  = 20;
    num nn  = 12.2;

    // HEX
    int hex = 0xCBEEAD;
    double exponents = 1.23e5;
    print(int.parse('1')); // string to int
  
    //Runes and grapheme clusters 
    // dart use utf-16 (uses one or two 16 bits (2 or 4 bytes))
    print('\u{1f606}');





  //----- LIST ---
 

  List l1 = [2,3,4,"Hello string"];
  print(l1);
  print(l1[2]);
  
  List<int> l2 = [4,2,6,3,2];


  l1.forEach((e){print(e);});

  //------- RECORDS / TUPLES -----------

  /*
    Records are an anonymous, immutable, aggregate type.
  */

  var record = ('first', a: 2, b: true, 'last');
  // this is reordered to ('first','last',{a:2,b:true})
  print(record.a); // 2
  print(record.$2); // last

  (int, int) swap((int, int) record) {    
    // take tuple as input and assign that tuple
    var (a, b) = record;
    return (b, a);
  }

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);
  (int x,int y) recordYZ = (1,3);
  




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