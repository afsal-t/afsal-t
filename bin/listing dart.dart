void main() {
  List<int> list1 = [1, 2, 3, 4, 5, 6, 7,];
  print(list1);
  list1.add(22);
  print(list1);
  list1.add(55);
  print(list1);
  list1.remove(2);
  print(list1);
  list1.remove(6);
  print(list1);
  list1.add(88);
  print(list1);
  list1.remove(5);
  print(list1);
  list1.add(555);
  print(list1);
  list1.removeAt(2);
  print(list1);

  List<int> list2=[3,66,66,88,88];
  print(list2);
  list1.addAll(list2);
  print(list1);
  list1.add(7);
  print(list1);
  print(list1.join(' '));

  List<List<int>> list3= [[2,23,33,],[3,55,6]];
  print(list3[1][0]);
  print(list3[0][2]);

  list2.removeRange(1, 2);
  print(list2);

}