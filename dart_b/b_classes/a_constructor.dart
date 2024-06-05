
// ignore_for_file: unused_local_variable

class Person{
  final String name;
  final int age;

  // constructor will return a constant value
  const Person(this.name,this.age);

  // second constructor
  const Person.foo(age):this.name = 'Foo',this.age = age;

  const Person.other({this.name = 'babu', this.age = 14});

  @override
  String toString() {
    
    return "Name: ${this.name}, age: ${this.age}";
  }

}

void main(){

  Person person1 = Person('Tom',32);
  Person person2 = Person.foo(34);

  
  Person person3_a = Person.other();
  Person person3_b = Person.other(age: 16);
  Person person3_c = Person.other(name: "nano");
  Person person3_d = Person.other(name: "Shawn",age: 34);
  

  print(person1.toString());
  print(person2.toString());

  print(person3_a.toString());
  print(person3_b.toString());
  print(person3_c.toString());
  print(person3_d.toString());


}    