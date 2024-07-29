void main()
{
  List<int> list1=[1,2,3,4,5,6,7,8,9,];
  print(list1);
  list1.length;
  print(list1);
  list1.length;
  print(list1.length);
  list1.add(25);
  print(list1);
  list1.remove(25);
  print(list1);
  list1.removeLast();
  print(list1);
  list1.remove(22);
  print(list1);

  List<int> list2=[22,33,44,55,66,77,88,];
  list1.addAll(list2);
  print(list1);
  var list3=["hiba",22,22,33,44,55,];
  print(list3);
  list3.addAll(list1);
  print(list3);

  Set<int> set={1,2,3,4,5,5,6,7,7,};
  print(set);
  var set2={"hisana","where are you"};
  print(set2);
  var set3={1,2,2,3,3,3,3,3,3,3,3,3,4};
  print(set3);
  set.addAll(set3);
  print(set);
  set.add(220);
  print(set);
  set.remove(3);
  print(set);
  set.forEach((element) {
    print(element);
  });
  }
  