import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
  
class MyApp extends StatelessWidget { 
  const MyApp({super.key});
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      title: 'Enactus KIIT',
      home: HomePage(), 
    ); 
  } 
} 
class HomePage extends StatefulWidget { 
  @override
  _HomePageState createState() => _HomePageState(); 
}
class _HomePageState extends State<HomePage> {
  @override 
  Widget build(context){
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Colors.black,
        title: Row(
              children: [
                  Image.asset(
                 'enactus.png',
                  fit: BoxFit.contain,
                  height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), child: Text(style: TextStyle(color: Colors.white, fontSize: 24), "enactus KIIT-KISS"))
            ],
          ),
      ), 
      backgroundColor: Colors.black,
    );
  } 
}