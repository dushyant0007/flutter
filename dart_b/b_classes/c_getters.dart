class Person{
  final String firstName;
  final String lastName;
    
  const Person({required this.firstName,required this.lastName});

  // Getter // this is not accessed as a function but as a property
  String get get_fullName => '$firstName $lastName';

}

void main(){
  print(Person(firstName: 'Tom', lastName: 'Cruse').get_fullName);
}