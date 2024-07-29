void main(){
  Set<int> set1={1,2,2,2,2,2,2,2,2,3,466,2,3};
  print(set1);

  var set2={"hello",1,1,1,3,5,7,};
    print(set2);

    set1.add(2);
    print(set1);
    set1.add(33);
    print(set1);
    print(set1.length);

    Set<int> set3={3,4,5,6,7,8,9,};
    set1.addAll(set3);
    print(set1);

    set1.remove(3);
    print(set1);
    set1.forEach((element) {
    print(element);
  });
  print(set1.join('e'));
  if (set1.contains(33))
    {
      print('correct');
    }
  else
    print("false");

  var set4 =Set.from(set1);
  print(set1);
  var set5=Set();
  set5.add(22);
  print(set5);

Set<int> set10={33,44,55,66,77,88,};
Set<int> set11={23,34,45,67,78,89,};
print(set10.union(set11));
print(set10.intersection(set11));
print(set10.difference(set11));
}