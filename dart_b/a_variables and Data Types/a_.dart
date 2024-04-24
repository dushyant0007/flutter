
// ignore_for_file: unused_local_variable

/*
  The Dart language has special support for the following:

    Numbers (int, double)
    Strings (String)
    Booleans (bool)
    Records ((value1, value2))
    Lists (List, also known as arrays)
    Sets (Set)
    Maps (Map)
    Runes (Runes; often replaced by the characters API)
    Symbols (Symbol)
    The value null (Null)
*/

void main(List<String> args){

  //----------------------
    // the val of const variable should be available on compile time
    //the modification of value and assigning new value to variable is forbidden
    const name = [1,2,3];
    // name.add(3); // error
    print(name);

  //----------------------
    // the value of final should be available on run time
    // only assigning new value to variable is forbidden
    final age = [1,2,3];
    age.add(5);
    
  //----------------------
    
    // var by default initialized by null
    var ff;
    print(ff); // null

    // the type could't determined on compile time
    // so this type determination job as assigned to runtime
    // and when even run time could't determine the type, the NULL(dynamic) type is assigned
    print(ff.runtimeType);

    //var variable can be reassigned a new value
    // and it's value can modify as well
    var address = '123 Main St';
    // address = 23; // error
    print(address);
    address = '456 Main St';
    address.replaceAll('Main', 'bla');
    print(address);

  // -----------------------

    // type is expectedly written
    String key = 'KEY'; 
 
    // dart infer datatype automatically
    // type is determined on compile time
    var val = 'value'; 

  // ----------------------  

    // dart infer datatype automatically
    const int yourAge = 20;
    const myAge = 20;

  // ----------------------

    // late variable are only initialized only when they are in use
    late final int myValue = 10;
    print(myValue);

    int getValue(){
      print('getValue Called');
      return 10;
    }

    late final rtnVal = getValue();
    print('we are here');

    /*
      getValue() only have called when i used rtnVal variable
      because of late keyword 
    */
    print(rtnVal);

    // the fun is't called again, because the value is already determined
    print(rtnVal);

  // ------------------------- 


}