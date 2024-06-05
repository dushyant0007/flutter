
import 'dart:collection';

class Car{
  
  int speed = 0;

  void drive({required int speed}){
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop(){
    this.speed = 0;
    print('Car is Stopped');
  }
  
}

void main(){
  final myCar = Car();
  myCar.drive(speed: 20);
  print('Speed is ${myCar.speed}');
}

