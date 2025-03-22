void main(){
  Human human =new Human();
  Human1 human1=new Human1(10);
  human.fn1();
  fn2();
  int val1;
  int val2=fn3(3,5);
  print(val2);
}
void fn2(){
  print('fn2 outside class');
}
int fn3(int a,int b){
  int sum=a+b;
  return sum;
}

class Human{
  void fn1(){
    print("hello1");
  }
}
class Human1{
  int ? val;
  Human1(int val){
    this.val=val;
    print(this.val);
  }
}
