

enum AnimalType { rabbit, dog, cat }

class Animal{
  final String name;
  final AnimalType type;

  Animal(this.name,this.type);

}

enum Car {

  teslaModelX('Tesla','Model X',2023),
  teslaModelY('Tesla','Model Y',2022);

  final String manufacturer;
  final String model;
  final int year;

  const Car(this.manufacturer,this.model,this.year);
}

class Person{
  final String name;
  final Car car;

  const Person(this.name,this.car);
}

void main(){

  final woof = Animal('woof', AnimalType.dog);

  if(woof.type == AnimalType.dog)
    print('woof is a dog');
  else
    print('woof is not a dog');
  

  switch(woof.type){
    case AnimalType.rabbit:
      print('this is rabbit');
      break;

    case AnimalType.dog:
      print('animal is dog');
      break;

    default:
      print('This is something else');
  }

  
  final foo = Person('Tony', Car.teslaModelX);

  switch(foo.car){

    case Car.teslaModelX:
      print('This is model x');
      break;

    case Car.teslaModelY:
      print('This is model y');
      break;   
  }

  // converting string to enums
    
}
