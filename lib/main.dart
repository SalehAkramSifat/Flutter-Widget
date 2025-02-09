import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity(),);
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();

}

class _HomeActivityState extends State<HomeActivity> {
  bool isChecked = false;
  bool isSwitched = false;
  String selectGender = "Male";
  double sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello Flutter"), backgroundColor: Colors.blueAccent, centerTitle: true,),

      body: SingleChildScrollView(padding: EdgeInsets.all(20), child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.stretch, children: [Text("Welcome", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueAccent), textAlign: TextAlign.center,),

        SizedBox(height: 20),

        TextField(decoration: InputDecoration(labelText: "Enter Your Name", border: OutlineInputBorder(), prefixIcon: Icon(Icons.person),),),

        SizedBox(height: 20),

        ElevatedButton(onPressed: () {print("ElevatedButton Clicked");}, style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent, padding: EdgeInsets.symmetric(vertical: 20), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),), child: Text("Submit", style: TextStyle(fontSize: 15, color: Colors.white),),),

        SizedBox(height: 20),
            TextButton(onPressed: () {print('You Clicked OutLine Button');}, child: Text("Click Me", style: TextStyle(fontSize: 10, color: Colors.blueAccent),),),

        SizedBox(height: 10),
            OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(vertical: 20), side: BorderSide(color: Colors.blueAccent), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),), child: Text("Outline Button", style: TextStyle(fontSize: 16, color: Colors.blueAccent),),),

        SizedBox(height: 10),
            Center(child: IconButton(onPressed: () {print('IconButton Clicked!');}, icon: Icon(Icons.favorite, color: Colors.red, size: 40),),),

        SizedBox(height: 20),
            Center(child: Image.network("https://images.app.goo.gl/6wzRKuRwoHVjJriY7", width: 100, height: 100,),),

        SizedBox(height: 10),
            Center(child: Icon(Icons.computer, size: 200, color: Colors.orange),),

        SizedBox(height: 20),
            Row(children: [Checkbox(value: isChecked, onChanged: (value) {setState(() {isChecked = value!;});},), Text("Accept Terms & Conditions"),],),

        SizedBox(height: 10,),
            Row(children: [Text('Dark Mode:'), Switch(value: isSwitched, onChanged: (value) {setState(() {isSwitched = value;});},),]),

        SizedBox(height: 10,),
        Center(child: CircularProgressIndicator(color: Colors.red,),),

        SizedBox(height: 10,),
        Row(children: [Text("Gender"), SizedBox(width: 10),
            Radio(value: "Male", groupValue: selectGender, onChanged: (value) {setState(() {selectGender = value.toString();});},),

          Text("Male"),
            Radio(value: "Female", groupValue: selectGender, onChanged: (value) {setState(() {selectGender = value.toString();});},),
            Text("Female"),
          ],),

        SizedBox(height: 10,),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Volume: ${sliderValue.toInt()}"),
        Slider(value: sliderValue, min: 0,max: 100,divisions: 10,label: sliderValue.toInt().toString(), onChanged: (value){setState(() {
          sliderValue = value;
        });)],)

      ],
        ),
      ),
    );
  }
}
