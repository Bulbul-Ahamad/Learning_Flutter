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

  var arrnames = ["Hridoy","HK","Bulbul","Ahamad","Bokul"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:ListView.separated(itemBuilder: (context, index) {
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(arrnames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(arrnames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ),
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(arrnames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
          ],
        );
      },
        itemCount: arrnames.length,
        separatorBuilder: (context , index){
        return Divider(height: 100, thickness: 1,);
        },
      ),
      // ListView.builder(itemBuilder: (context, index) {
      //   return Text(arrnames[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),);
      // },
      //   itemCount: arrnames.length,
      //   itemExtent: 100,
      //   scrollDirection: Axis.horizontal,
      // ),
      // ListView(
      //   reverse: true,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("One",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Two",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Three",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Four",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Five",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Six",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text("Seven",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
      //     ),
      //   ],
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
