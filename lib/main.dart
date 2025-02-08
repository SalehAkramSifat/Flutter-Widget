import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity(),);
  }}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello Flutter"), backgroundColor: Colors.blueAccent, centerTitle: true,),

      body: Padding(padding: EdgeInsets.all(20),child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.stretch,children: [
        Text("Welcome", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueAccent),textAlign: TextAlign.center,), SizedBox(height: 20,),
        TextField(decoration: InputDecoration(labelText: "Enter Your Name", border: OutlineInputBorder(),prefixIcon: Icon(Icons.person),),),
        SizedBox(height: 20),

        ElevatedButton(onPressed:(){print("ElevatedButton Clicked");}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent, padding: EdgeInsets.symmetric(vertical: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),), child:Text("Submit", style: TextStyle(fontSize: 15, color: Colors.white),), ), SizedBox(height: 20),

        TextButton(onPressed:(){print('You Clicked OutLine Button');}, child:Text("Click Me", style: TextStyle(fontSize: 10, color: Colors.blueAccent), ), ), SizedBox(height: 10),

        OutlinedButton(onPressed:(){}, style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 20), side: BorderSide(color: Colors.blueAccent), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),), child: Text("Outline Button", style: TextStyle(fontSize: 16, color: Colors.blueAccent),),)
      ],),),
    );
  }}