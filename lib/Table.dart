import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: table(),));
}
class table extends StatelessWidget {
  const table({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(border: TableBorder.all(
          width: 3.0,color: Colors.black,
        ),
          columns: [
          DataColumn(label: Text("id",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
          DataColumn(label: Text("name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
          DataColumn(label: Text("job",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
          DataColumn(label: Text("salary",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        ],

          rows: [
            DataRow(cells: [
              DataCell(Text("1")),
              DataCell(Text("Afsal")),
              DataCell(Text("Teacher")),
              DataCell(Text("50000")),
            ]),
            DataRow(cells: [
              DataCell(Text("2")),
              DataCell(Text("Hisana")),
              DataCell(Text("IT")),
              DataCell(Text("25000")),
            ]),
            DataRow(cells: [
              DataCell(Text("3")),
              DataCell(Text("Hiba")),
              DataCell(Text("doctor")),
              DataCell(Text("50000")),
            ]),
            DataRow(cells: [
              DataCell(Text("4")),
              DataCell(Text("Anu")),
              DataCell(Text("Teaching")),
              DataCell(Text("50000")),
            ]),
          ],),
      ),
    );
  }
}
