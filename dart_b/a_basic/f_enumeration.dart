
enum AnimalType { rabbit, dog, cat }

class Animal {
  final String name;
  final AnimalType type;

  Animal(this.name, this.type);
}

enum Car {
  teslaModelX('Tesla', 'Model X', 2023),
  teslaModelY('Tesla', 'Model Y', 2022);

  final String manufacturer;
  final String model;
  final int year;

  const Car(this.manufacturer, this.model, this.year);
}

class Person {
  final String name;
  final Car car;

  const Person(this.name, this.car);
}

void main() {
  final woof = Animal('woof', AnimalType.dog);

  if (woof.type == AnimalType.dog)
    print('woof is a dog');
  else
    print('woof is not a dog');

  switch (woof.type) {
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

  switch (foo.car) {
    case Car.teslaModelX:
      print('This is model x');
      break;

    case Car.teslaModelY:
      print('This is model y');
      break;
  }
  ;

  test_enum_mixin();

  etd_enm();

  test_enum_comp();
}

//--- enums in mixins(interfaces)
mixin CanJump {
  int get feetCount;

  void jump() {
    if (feetCount < 1) {
      throw Exception('Cant Jump');
    } else {
      print('Jumped');
    }
  }
}

enum AnimalType_a with CanJump {
  cat(4),
  dog(4),
  fish(0);

  @override
  final int feetCount;

  final svn = 7;

  const AnimalType_a(this.feetCount);
}

void test_enum_mixin() {
  AnimalType_a.dog.jump();
  AnimalType_a.cat.svn;
}
// ------------------

// ------- Extending enums -----

enum AnimalType_b {
  cat,
  dog,
  rabbit;

  void run() {
    print('Running...');
  }
}

// extension is a way to add functionality to an existing class without modifying the class itself
// just adding something in AnimalType_b
extension Jump_j on AnimalType_b {
  void jump() {
    print('$this is jumping...');
  }
}

void etd_enm() {
  // .. (cascade operator)
  AnimalType_b.cat
    ..run()
    ..jump();
}

// --------------------------------

// ---- Implementing Comparable on Enumerations

enum TeslaCars implements Comparable<TeslaCars> {
  modelY(weightInKg: 2.2),
  modelS(weightInKg: 2.1),
  model3(weightInKg: 1.8);

  final double weightInKg;

  const TeslaCars({
    required this.weightInKg,
  });

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(other.weightInKg);
}

void test_enum_comp(){
  print(TeslaCars.values); 
  print([...TeslaCars.values]..sort());
}

//-----------------------------------------