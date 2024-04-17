// ignore_for_file: unused_local_variable


void main(){

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

        //! Optional or nullable variables - variables can have two values (it can have value(String/int/bool/etc) or another value (NULL))

        // int nums_a = null; // error
        int? nums_a = null; // ? to specify this is an optional variable
        
        // print(nums_a.bitLength); // give compile time error (property 'length' can't be unconditionally accessed because the receiver can be 'null')
        // print(nums_a!.bitLength); // give run time error (can't read properties of 'null')

        print(nums_a?.bitLength); // if it is null print 'null' else excess the property and print the property's value
        print(nums_a?.bitLength??'zero'); // if it is null print zero else excess the property and print the property's value

    // ------------------------------------------

      
          



}

