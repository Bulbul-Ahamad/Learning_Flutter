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
        title: Text("Container"),
      ),
      body: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          Spacer(flex: 3),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          Spacer(flex: 7),
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          )
          // Container(
          //   height: 200,
          //   width: 200,
          //   decoration: BoxDecoration(
          //     color: Colors.amber,
          //     // shape: BoxShape.circle,
          //     // border: Border.all(width: 10, color: Colors.blue),

          //     // borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          //   width: 20,
          // ),
          // Container(
          //   height: 200,
          //   width: 200,
          //   decoration: BoxDecoration(
          //     color: Colors.amber,
          //     // shape: BoxShape.circle,
          //     // border: Border.all(width: 10, color: Colors.blue),

          //     // borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
          //   ),
          // ),
          // Divider(
          //     height: 50,
          //     color: Colors.amber,
          //     thickness: 3,
          //     indent: 50,
          //     endIndent: 50),
        ],
      ),
    );
  }
}
