
class Cookie {

  static String greeting = 'Hello, how are you';

  String shape = 'Circle';
  double size = 15.2;

  // private variable  (start with uderscore)
  // these are not private for a class / these are private for the file
  int _private = 10112;

  // same thing // constructor can't be overladed (because we have optional and name parameters which we can use to achieve as Cookie)
  // Cookie(this.shape,this.size);
  Cookie(String shape,double size){
    this.shape = shape;
    this.size = size;
  }

  // Cookie.zero(){
  //   shape = ' _ ';
  //   size = 0;
  // }
  // -- OR -- 
  // Cookie.zero():shape = '_',size = 0{
  //   print('what a cookie');
  // }
  // -- OR -- // constructor forwarding
  Cookie.zero():this('_',0);

  Cookie.defaultCookie(){
    this.shape = 'Some Shape';
    this.size = 99.99;
  }



  void set_private(int val){
    _private = val;
  }
   
  void print_private(){
    print(_private);
  }

  void baking(){
    print('Baking has started');
  }

  bool isCooling(){ 
    return false;
  }
   

  // we have also special getters and setters
  int get special_get_for_private { int temp = _private*2; return temp;}
  //or
  int get special_get_for_private1 => _private*2;

  set special_set_private(int p){ _private = p;}

  void printAll(){
    print(shape);
    print(size);
  }

  static change_greeting(String newGreeting){
    greeting = newGreeting;
  }

}

void main(){


  Cookie c1 = new Cookie('squire',11.2);
  c1.size = 11.3;
  print('Cookie c1 shape: ${c1.shape}, size: ${c1.size}, isCooling is ${c1.isCooling()}');

  //private variates are private to the file not class
  print(c1._private);
  c1.set_private(81);
  c1.print_private(); 

  print(Cookie.greeting);
  Cookie.change_greeting("This is new greeting");
  print(Cookie.greeting);

  Cookie df_cookie = new Cookie.defaultCookie();

  Cookie zr_cookie = new Cookie.zero();
  zr_cookie.printAll();


}