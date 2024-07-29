import 'dart:io';

void main(){
  print("enter the number of term");
  int n= 10;
  int.parse(stdin.readLineSync()!);

  int t1= 0, t2 = 1;

  print("fibonacci series");
  print("t1");
  print("t2");

  for (int i = 3; i<= n; i++){
    int nextTerm = t1 + t2;
    print("nextTerm");
    t1=t2;
    t2= nextTerm;
  }
}