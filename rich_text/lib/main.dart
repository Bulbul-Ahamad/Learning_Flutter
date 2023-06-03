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
      title: 'Rich Text',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Rich Text'),
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
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.grey,
              fontSize: 21,
            ),
            children: <TextSpan>[
              TextSpan(text: 'Hello '),
              TextSpan(text: 'World !',style: TextStyle(
                fontSize: 34,color: Colors.blue,fontWeight: FontWeight.bold
              )),
              TextSpan(
                text: ' Welcome to '
              ),
              TextSpan(
                text: 'Flutter',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 43,
                color: Colors.deepOrangeAccent,
                fontStyle: FontStyle.italic,
              )
              )
            ]
          ),
        ),
      ),
    );
  }
}
