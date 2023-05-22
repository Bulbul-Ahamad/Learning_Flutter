import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Widget"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.cyan,
              child: ListView.builder(itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                    width: 100,
                    child: CircleAvatar(backgroundColor: Colors.brown,)),
              ),itemCount: 10,scrollDirection: Axis.horizontal,),
            ),
          )
          ,Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
              child: ListView.builder(itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyan,
                  ),
                    title: Text("Name"),
                  subtitle: Text("Mob No."),
                  trailing: Icon(Icons.delete),
                ),
              ),itemCount: 10,scrollDirection: Axis.horizontal,),
            ),
          )
          ,Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: ListView.builder(itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.blue,
                    ),
                  ),
                ),itemCount: 10,scrollDirection: Axis.horizontal,),
            ),
          )
          ,Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
