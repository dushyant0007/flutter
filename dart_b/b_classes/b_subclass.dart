
import 'dart:collection';

class Vehicle /* extends Object (implicit)*/{
  final int wheelCount;

  const Vehicle(this.wheelCount);

  @override
  String toString(){
    return "The wheelCount is ${wheelCount} and runtimeType ${runtimeType}";
  }
}


class Car extends Vehicle {

  // const Car(super.wheelCount);
  // or 
  const Car():super(4);
}

class Bicycle extends Vehicle{
  const Bicycle():super(2);
}


void main(){
  final v = Vehicle(5);
  print(v);
  print(v.toString());
  print(Car());
  print(Bicycle());
}