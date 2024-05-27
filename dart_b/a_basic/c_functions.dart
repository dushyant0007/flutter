


void main(){

  print(doNothing());
  named_para_sayHelloTo(name:'john',num:1);

  makeUpperCase('foo');
  makeUpperCase('foo','zoo');

  makeUpperCaseCake('cake');

  print(performOperation(10, 11, add1));

  Function rtn_fun = doSomething(15, 20);
  print(rtn_fun());
  print(rtn_fun());
}

// if we don't specify return type, the return type is dynamic and null is returned by default
doNothing(){}

// by saying void the call site could't consume the null value which is return ,just like in above example
void doNothing_void(){}

// named parameters, always have to have a value
// parameters either needs to have default value or they needs to be optional or required
void named_para_sayHelloTo({String? name = 'bob', required int num}){
  print('hello $name'); 
}

// positional parameters / always have to pass them into function
void sayGoodbyeTo(String person, String? anotherPerson){

  print('Goodbye, $person and $anotherPerson');

}

// optional positional arguments\
void makeUpperCase([String name = 'foo', String? lastName]){
  print(name.toUpperCase());
  print(lastName?.toUpperCase());
}

// Mixed various parameters 
void describeFully(String firstName,{String? lastName = 'Bar'}){}
void makeUpperCaseCake(String cake,[String name = 'foo', String? lastName]){}  


//return // return type is dynamic by default
add([int a = 1,int b = 2]){
  final foo = a + b;
  return foo;
}


int add1([int a = 1,int b = 2]){
  final foo = a + b;
  return foo;
}

// arrow
int add2([int a = 1, int b = 3]) => a+b;

 
// functions returning functions
int performOperation(int a,int b, int Function(int,int) operation){
  return operation(a,b);
}

// return functions from function

int Function() doSomething(int a,int b){
  return () => a+b;
}