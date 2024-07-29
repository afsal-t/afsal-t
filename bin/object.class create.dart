class myclass{
  String name="afsal":
  static String course="python";
  void show(){
    String name1="anu";
    print(name1);
    print(name);

  }
}

void main(){
  myclass obj7=myclass();
  obj7.show();
  obj7.name="aysha";
  print(obj7.name);

  print("my name is ${obj7.name}");
  print('my course is ${myclass.course}");


}