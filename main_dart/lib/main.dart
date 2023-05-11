import 'package:flutter/material.dart';

void main(){
  runApp(MainDart());
}
class MainDart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MainDart",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: DashBoardScreen(),
    );
  }
}
class DashBoardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dashboard")),
      ),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.brown.shade700,
      ),
    );
  }
}