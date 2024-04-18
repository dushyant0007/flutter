
class Vehicle {
  int speed = 10;
  bool isEngineWorking  = false;

  void accelerator(){
    speed+=10;
  }
}

class Car extends Vehicle{
  int noOfWheels = 4;
  void print_num_wheels(){
    print(noOfWheels);
  }
}

class SmallCar extends Car{

  /*
    In Dart, when you declare a variable in a subclass with the same name as a 
    variable in its superclass, it is not actually overriding the variable. 
    Instead, it is shadowing the variable from the superclass. 
    This means that the subclass has its own separate variable with the 
    same name, but it does not affect the variable in the superclass.
  */
  int speed = 3;

  void print_super_speed(){
    print(super.speed);
  }


  // override
  void accelerator(){
    speed+=50;
  }

}

void main(){

  Car swift = new Car();
  print(swift.speed);

  Vehicle van = new Car();
  print((van as Car).noOfWheels);

  SmallCar race = SmallCar();
  race.accelerator();
  print((race as Vehicle).speed);

}