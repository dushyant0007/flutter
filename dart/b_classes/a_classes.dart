class Cookie {

  String shape = 'Circle';
  double size = 15.2;

  // same thing
  // Cookie(this.shape,this.size);
  Cookie(String shape,double size){
    this.shape = shape;
    this.size = size;
  }
   
  void baking(){
    print('Baking has started');
  }

  bool isCooling(){
    return false;
  }
}

void main(){


  Cookie c1 = new Cookie('squire',11.2);
  c1.size = 11.3;
  print('Cookie c1 shape: ${c1.shape}, size: ${c1.size}, isCooling is ${c1.isCooling()}');

}