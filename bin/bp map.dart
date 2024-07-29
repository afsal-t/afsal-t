void main(){
  Map<String,dynamic> map22={"name":"afsal", "age": 25, "mark":56.09,"names" : };
  print(map22);
  var map23={12,23,34,"afsal","hiba"};
  print(map23);

  Map map34=Map();
  map34["name"]="hiba";
  print(map34);
  map34["age"]="25";
  print(map34);
  print(map34["name"]);
  print(map34["age"]);

  map34.forEach((key, value) {
    print("$key = $value");
  });

  print("the keys are ${map34.keys}");
  print("the values are ${map34.values}");
  print(map34.containsValue("hiba"));
  print(map34.containsKey("name"));

  var list1=[1,2,3,4,5];
  var list2=[6,"hiba",7,8,9,];
  Map map55=Map.fromIterables(list1, list2);
  print(map55);

  Map map35={}..addAll(map34)..addAll(map22);
  print(map35);

  Map map56={...map34,...map22};
  print(map56);

  var list4=[
    {
      
    }

  ]

}