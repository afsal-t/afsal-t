import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: date(),));
}
class date extends StatefulWidget {
  const date({super.key});

  @override
  State<date> createState() => _dateState();
}

class _dateState extends State<date> {
  DateTime Selectdate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: TextEditingController(text: "${Selectdate.toLocal()}".split("")[0]),
          readOnly: true,
          decoration: InputDecoration(
            hintText: "Select date",
                suffixIcon: Icon(Icons.account_circle),
          ),
          onTap: ()=>dateselect(context),
        ),
      ),
    );
  }

 Future<void> dateselect(BuildContext context) async{
    final DateTime ? picktime=await showDatePicker(
        context: context, firstDate: DateTime(2022), lastDate: DateTime(2026));
    if (picktime!=null && picktime!=Selectdate);
    setState(() {
      Selectdate=picktime!;
    });
 }
}
