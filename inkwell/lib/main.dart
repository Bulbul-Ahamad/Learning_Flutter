import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
          onDoubleTap: () {
            print("Double Tapped");
          },
          onTap: () {
            print("single Tap");
          },
          onLongPress: () {
            print("Long Pressed");
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Center(
                child: InkWell(
                  onTap: (){
                    print("Text Clicked");
                  },
                    child: Text(
              "Click Here",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
            ))),
          ),
        ),
      ),
    );
  }
}
