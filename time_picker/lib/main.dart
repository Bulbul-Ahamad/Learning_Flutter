import 'dart:js';

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
  String? time;
  String? date;
  pickTime(context) async {
    final pickedTime = await showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 5, minute: 35));
    print(pickedTime);
  }

  pickDate() async {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Picked time is : $time',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'Picked time is : $time',
              style: TextStyle(fontSize: 40),
            ),
            Divider(),
            ElevatedButton(
                onPressed: () {
                  pickTime(context);
                },
                child: Text("Pick Time")),
            ElevatedButton(
                onPressed: () {
                  pickDate();
                },
                child: Text("Pick Date")),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
