import 'dart:io';

void main(){
  print("enter your place");
  var place=(stdin.readLineSync()!);
  if (place=="wayanad")
    print("correct");

  else {
    print("not correct");
  }
}