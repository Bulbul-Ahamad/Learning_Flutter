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
      debugShowCheckedModeBanner: false,
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

        title: Text("Expand"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.blueGrey,
            ),
          ),
          Expanded(
            flex: 4,
              child: Container(
                height: 100,
                color: Colors.green,
              ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}