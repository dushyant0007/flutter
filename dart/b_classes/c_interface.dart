

/*
adding abstract in before class is int compulsory
if we do put abstract we can't make it's object
else if we don't put abstract then also it behave 
like abstract with using implements and class when extends
*/

abstract class wheel{
  double radios = 3;
  int life = 100;
  void reduce_life(){
    life -=1;
  }
}

class Vehicle{
  bool isEngineWorking = false;
  bool inLightOn = false;
  int noOfWheels = 10;

  void accelerate(){
    print('this is accelerator');
  }
}

class Car implements Vehicle{

  @override
  bool inLightOn = true;

  @override
  bool isEngineWorking = true;

  @override
  int noOfWheels = 4;

  @override
  void accelerate(){
    print('accelerating');
  }

}

void main(){   

  Vehicle v = new Vehicle();

}