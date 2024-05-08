
// ignore_for_file: unused_local_variable, unused_element

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

import 'dart:async';
import 'dart:io';
import 'dart:math';

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

    // __---__Optionals__----__-__--__---

    // nullable/optional datatype by default are initialized to null 
    String? ss;
    print(ss);

    String s;
    // print(s);// error - uninitialized variable

    // access the length property only if ss is! null
    //+ print(ss?.length); // null aware operator

    // if null print foo else ss
    print(ss ?? "fee");

    List <String>? la = null;
    List <String?> lb = ['a','bb',null];
 
    // Combining null-Aware operator
    if(ss?.contains('bu') ?? false)
      print('bla bla bu');


    // unwrapping multiple optionals
    T? withAll<T> (List<T?> optionals, 
    T Function(List<T>) callback)
      => optionals.any((element) => element == null) ? null : callback(optionals.cast<T>());
    

    // Optional flat map
    String? firstName = 'John';
    String? lastName = 'Doe';
    final bla = firstName.flatMap
      ((f) => lastName.flatMap((l) => '$f $l') )
      ?? "First Name and/or Last Name is/are null";

    // Default values for optionals
    // is firstName is null use Default value else use the value of firstName
    var what = firstName.orDefault;

    // Extending optional type
    String? the_str = 'ok';
    the_str.is_disco_null();

}

// everything extends from Object
// adding code to the class of optional Object
extension Describe on Object? {
  void is_disco_null(){
    if(this == null)
      print('This object is null');
    else
      // runtimeType : property of Object class
      print('$runtimeType: $this');
    
  } 
}

extension FlatMap<T> on T? {

  R? flatMap<R>(R? Function(T) callback){
    if (this == null)
      return null;
    else{
      // (val!) means the val can't be null // force unwrapping  
      return callback(this!);
    }
  }
}

extension Defaultvalues<T> on T?{
  T get orDefault {
    if (this  != null)
      return this!;
    
    else
      switch(T){
        case String:
          return '' as T;

        case double:
          return 0.0 as T;

        case int:
          return 0 as T;
        
        case bool:
          return false as T;
        
        default:
          throw Exception('No Default value for type $T');
      }

  }
}

