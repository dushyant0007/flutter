import 'dart:io';

void main(){

  // ------------------------------------------- 
  // --------- If Statements -------------------
  // ------------------------------------------- 

    int age = 13;

    if(age >= 18)
      print('ADULT');
    
    else if(age == 0)
      print('zero can\'t be the age');
    
    else
      print('CHILD');
    
  // ------------------------------------------- 
  // ----------- Ternary -----------------------
  // ------------------------------------------- 

    String some_value = 'Hi!';
    String value = some_value.startsWith('Hi') ? 'WOW' : 'nah';
    print(value);

  // ------------------------------------------- 
  // ------------ Switch Statements ------------
  // ------------------------------------------- 


    switch(some_value ){
      case 'Hi!' when some_value.length >= 3 && some_value.length <= 10:
        print('Hello');
        // we don't need to put break here after dart 3 , like we do in cpp or java
        // break is required when the case is empty , else it will execute the just next case

      case 'Bay'|| 'chu': 
        print('Bay Bay');

      case 'Ok':
        print('Ok OK');

      default:
        print('This is Default');
    }

  // ------------------------------------------- 
  // ------------ LOOPS ------------------------
  // ------------------------------------------- 


    for(int i = 11; i <= 15 ; i+=2)
      stdout.write('hello ');
    print('');

    int i = 100;
    while(i > 0) 
      i--;

    do
      i+=1;      
    while(i <= 100);

}