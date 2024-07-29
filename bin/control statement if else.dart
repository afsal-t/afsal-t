import 'dart:io';

void main() {
  print("enter your place");
  var place= (stdin.readLineSync()!);

  if (place=='kalpetta')
    {
      print('okey');
    }
    else
      {
        print('select another');
      }
}
