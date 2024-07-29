void main(){
  show();
  print(show2());
  show3(23, 33);
  show4(222, 555);
  show5(23, b: 35, c: 23);
  show6(34, b: 35, c: 555);
  show7();
}
void show(){
  int a=10;
  int b=20;
  int c=a+b;
  print(c);

}
 int show2(){
  int a=222, b=333;
  int sum=a+b;
  return sum;
 }
 void show3(int a, int b){
  int sum=a+b;
  print(sum);
 }

  int show4(int a, int b){
    int sum=a+b;
    return sum;
  }

  void show5(int a,{required int b, int? c}) {
  print(a);
  print(b);
  print(c);

  }

  void show6(int a,{required int b, int c=25}) {
  print(a);
  print(b);
  print(c);
  }
  void show7()=>print("hello");
