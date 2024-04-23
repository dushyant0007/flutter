
/*
  The mixin does't stablish the parent/child relationship
  mixin - I have a bunch of code here, I want this bunch of code to bre
  reusable inside of any class;
*/ 

mixin Jump{
  int jumping = 10;
}

mixin Scream {
  bool isScreaming = false;
  int jumping = 901;
}

class Animal with Jump,Scream{
  void fn(){
    print(jumping);
  }
} 

class Cat extends Animal{
  void func(){
    print(jumping);
    print(isScreaming);
  }
}

void main(){

  Animal a1 = new Animal();
  a1.fn();

  Cat c1 = new Cat();
  c1.func();

}
