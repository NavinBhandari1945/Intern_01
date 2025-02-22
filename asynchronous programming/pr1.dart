main()async{
  final value1=await getname();
  print(value1);
}
Future<String> getname() async{
  return 'rupak';
}