void main(){
  B b=new B();
  print(b.num2);
  print(b._num);
}
class A{
  int _num=0;
  void setNum(int num){
    this._num=num;
  }
  int getNum(){
    return this._num;
  }
}
class B extends A{
  int num2=12;
}