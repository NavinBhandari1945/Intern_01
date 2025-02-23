void main(List<String> args) {
  int x=12;
  print(x);
  int? y=12;
  print(y);
  int z=5!;
  print(z);
  late int a;
  a=12;
  print(a);
   var b;
   print(b);
   var c=10;
  //  c="hello";
   c=15;
   print(c);
   dynamic f=12;
   f="hello";
   print(f);

//var as like dynamic
   var any1;
   any1=12;
   any1="hello";
   print(any1);

    int any3=12;
    any3=15;
    print(any3);

    final int any4=any3;
    // const int any5=any3;  not allow
    const int any6=12;
    print(any4);
    // print(any5);

    // const any7=12;  not allow
    // any7=12;

    // final any8=00; not allow
    // any8=45;

    double any12=10;
    int any13=any12.toInt();
    print(any13);

    int any10=5;
    double any11=any10.toDouble();
    print(any11);

    String val1="123";
    int conv=int.tryParse(val1);



}