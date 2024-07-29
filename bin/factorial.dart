import 'dart:io';

void main(){
  print("enter a number");
  int num =1;
  int.parse(stdin.readLineSync()!);

  int factorial = 1;
  for (int i= 1; i<= num; i++){
    factorial *=i;
  }
  print(" factorial of $num is $factorial");
}