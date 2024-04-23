

void main(){
/*
  Polymorphism≥ - ability of an object to take on many forms
  achieved through inheritance and method overriding
*/


/*
  Abstraction - Hiding the internal details and complexity of a object 
  and only exposing essential functinitloty
*/

  
/*
 Inheritance
*/
/*
  Encapsulation - Bundling of data and method together as a single unit
  and the data is hidden from the outside world (access modifiers)
*/ 


}



class Animal{

  String name;
  String last_name;

  // late : lazy initialization
  late final full_name_len;

  Animal(this.name,this.last_name){
    full_name_len = full_name_len_cal();
  }

  int full_name_len_cal(){
    return name.length + last_name.length;
  }

  void sound(){
    print("Animal making sound");
  }
}

class Cat extends Animal{

  Cat():super('a','b');
  
  @override
  void sound(){
    print('Cat making sound');
  }
}

class Dog extends Animal{

  Dog():super('a','b');
  

  @override
  void sound(){
    print("Dog making Sound");
  }
}

