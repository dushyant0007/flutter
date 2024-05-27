
import 'dart:io';

String input(){
  String? str  = stdin.readLineSync();

  final rtn  = str ?? '0';
  
  try{
    int.parse(rtn);
    return rtn;
  }
  catch(e){
    return '-1';
  }
    
  
}

void main(){

// ------------------------------------------------------------------------

  String age = input();

  print('-- Can Vote --');
  if( int.parse(age) >= 18)
    print('allowed to vote');
  
  else if (int.parse(age) < 18 && int.parse(age) > 0) 
    print('Not allowed to vote');
  
  else 
    print('Invalid input');  

// -------------------------------------------------------------------------

  const names = ['foo','bar','baz','qux'];
  print('-- Names --');
  for(int i = 0; i < names.length;i++)
    print(names[i]);

// -------------------------------------------------------------------------
   
   for(final name in names)
    print(name);

// --------------------------------------------------------------------------
    for(final value in Iterable.generate(7))
      print(value);

// --------------------------------------------------------------------------

    int i = 10;
    while(i > 0){
      i--;
    }
  
// --------------------------------------------------------------------------

    do{
      print('$i ok');
      i++;
    }while(i < 10);

// --------------------------------------------------------------------------

    void describe<T>(T value){
      switch(T){
        case int:
          print('This is an integer');
          break;
        case double:
          print("this is a double");
          break;
        case String:
          print('This is a string');
          break;
        default:
          print('It is something');
      }
    }

    describe(12.3);

}