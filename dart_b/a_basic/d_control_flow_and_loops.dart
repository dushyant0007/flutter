
import 'dart:io';

String input(){
  print("Enter the age integer ");
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

  // fall through in switch

  int a = 11;

  switch(a){
    case 11:
    case 12:
    case 13:
      print('11 <= a <= 13');
      break;
    
    case 14:
    case 15:
    case 16:
      print('14 <= a <= 16');
      break;

    default:
      print(' a <= 10 or a >= 17');
  }

}