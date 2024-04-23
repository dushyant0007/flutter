// ignore_for_file: unused_local_variable

/*
  Documentation comment:
    single line : ///
    multi line: /** bla bla */
*/ 

/*
  Dart is a type safe language
    Dart uses static type checking at compiler time and runtime check
    when using dynamic type the static analyzer won't care about assigned data anymore.

    By using var keyword  // dart analyzer automatically converts it to the type of the value it was assigned to
    and for rest of his life it can only be of that type, this conversion is happing using static dart analyzer
    // so var is a keyword for telling static dart analyzer , i want you to stoically decide the type

    // so here what should static analyzer assign the type  
    // the analyzer play safe and set type to dynamic, therefor passing the job to run time checker
    // and if the runtime checker sill does't know what type it should have it will set it to null;
    var a;

*/


void main(){

    /*
      Variables store references. The variable called name contains a reference to a String object
      with a value of "Bob".
      The type of the name variable is inferred to be String

      var name = 'Bob';
    */ 


    // -------------------------------------------

        print('One'); 
        print('on'+'ne');
        // print('2'+3); Error
        print('Ok '*4); // print Ok 4 times

    // -------------------------------------------

        int val_int  = 99;
        double val_double = 12.4;
        bool isCold_bool = false;
        String val_str = "Bob";

   // -------------------------------------------
        // dynamic/Object  - same thing
        dynamic val_d = 821;
        val_d = 'Jok';
        val_d = 44.7;

    // -------------------------------------------

        String interpolation = '${val_int} is a integer';


    // -------------------------------------------

        // types are determined by their initial values
        // here the type is automatically assigned - int
        var val_var = 10;
        // some_val = 'Tom' - we cant change the type

        // can only be set once
        final val_final = 'The Final String';

        // const var cant be re-assigned a value
        const val_const = 1215;

        // final vs const

        // final - run time constant
        final a_time = DateTime.now();
        // final String a_time = DateTime.now();// same thing

        // const - compile time constant
        // const b_time = DateTime.now(); // error because the val is calculated at runtime 

    
    // ------------------------------------------- 
        /*
          String? name  // Nullable type. Can be `null` or string.
          String name   // Non-nullable type. Cannot be `null` but can be string.
          Uninitialized variables that have a nullable type have an initial value of null. 
          Even variables with numeric types are initially null, because numbers—like everything else in Dart—are objects.
        */

        //! Optional or nullable variables - variables can have two values (it can have value(String/int/bool/etc) or another value (NULL))

        // int nums_a = null; // error
        int? nums_a = null; // ? to specify this is an optional variable
        
        // print(nums_a.bitLength); // give compile time error (property 'length' can't be unconditionally accessed because the receiver can be 'null')
        // print(nums_a!.bitLength); // give run time error (can't read properties of 'null')

        print(nums_a?.bitLength); // if it is null print 'null' else excess the property and print the property's value
        print(nums_a?.bitLength??'zero'); // if it is null print zero else excess the property and print the property's value

        String st;
        // print(st); // error - Non-nullable variable 'st' must be assigned before it can be used.
        //You don't have to initialize a local variable where it's declared, but you do need to assign it a value before it's used.


        /*
          int? lineCount;
          assert(lineCount == null);
          Production code ignores the assert() call. During development, 
          on the other hand, assert(condition) throws an exception if condition is false
        */

        /*
          Top-level and class variables are lazily initialized; the initialization code runs the first time the variable is used.
        */ 
    // ------------------------------------------

      /*
       at compile time the dart does't know the type of a, so it handover this compile time checker and set type dynamic,
       and still the run time checker does't know the type, the dart set the type as null 

       The late modifier has two use cases:
        Declaring a non-nullable variable that's initialized after its declaration.
        Lazily initializing a variable.

        If you're sure that a variable is set before it's used, but Dart disagrees, 
        you can fix the error by marking the variable as late:
      */

      var aa;
      print(aa.runtimeType); // null
      aa = 10;
      print(aa.runtimeType); // int
      aa = 'b';
      print(aa.runtimeType); // string 

    // ----------------------------------------------




  // ------------ OPERATORS --------

    /*
      "/"	  Divide
      "~/"	Divide, returning an integer 
      
      "as"	Typecast (also used to specify library prefixes)
      "is"	True if the object has the specified type
      "is!"	True if the object doesn't have the specified type
    */ 
    int a;
    int b;

    a = 0;
    b = ++a; // Increment a before b gets its value.
    assert(a == b); // 1 == 1

    a = 0;
    b = a++; // Increment a after b gets its value.
    assert(a != b); // 1 != 0


}

