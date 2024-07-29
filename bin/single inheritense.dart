class study{
  String institue="luminar";
  String course="flutter";
  void display(){
    print("my institute is $institue and my course is $course");

  }
}
class studentdetails extends study{
  String name="afsal";
  int  age=21;
  void studentinfrom(){
    print("my name is $name and my age is $age");

  }
}
void main(){
  studentdetails objj=studentdetails();
  objj.display();
  objj.studentinfrom();
  print(objj);
}