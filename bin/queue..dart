import 'dart:collection';

void main(){
  List<int> list1=[1,2,3,4,5,6,7,8,9,];
  Queue queue22=Queue.from(list1);
  print(queue22);
  queue22.add(99);
  print(queue22);
  queue22.addFirst(20);
  print(queue22);
  queue22.addLast(330);
  print(queue22);
  queue22.remove(1);
  print(queue22);
  queue22.removeFirst();
  print(queue22);
  queue22.removeLast();
  print(queue22);

  queue22.forEach((element) {
    print(element);
  } );


}