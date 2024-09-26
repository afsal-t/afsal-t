import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: loginpage(),));
}

class loginpage  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.purple[100],
        child:
        Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 80),
            child: Text("Loginpage",style:  TextStyle(fontSize: 30,color: Colors.cyan, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 30),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "username",
                  labelText: "username",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 30),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility_off),
                  hintText: "password",
                  labelText: "password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
              ),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[200],
              textStyle: TextStyle(color: Colors.deepOrange)),

              onPressed:(){

              },child:Text("Login") )


        ],
        ),
      ),
    );
  }
}