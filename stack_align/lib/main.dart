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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("stack"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.greenAccent,
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.blueAccent,
          ),
          // Stack(
          //   alignment: Alignment.center,
          //   clipBehavior: Clip.none,
          //   children: [
          //     Container(
          //       height: 400,
          //       width: 400,
          //       color: Colors.amber,
          //     ),
          //     // Container(
          //     //   height: 300,
          //     //   width: 300,
          //     //   color: Colors.greenAccent,
          //     // ),
          //     Positioned(
          //       top: -100,
          //       child: Container(
          //         height: 200,
          //         width: 200,
          //         color: Colors.blueAccent,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
