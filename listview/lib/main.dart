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

  var arrnames = ["Hridoy","HK","Bulbul","Ahamad","Bokul","HK","Bulbul","Ahamad","Bokul","HK","Bulbul","Ahamad","Bokul","HK","Bulbul","Ahamad","Bokul"];
  var arrNumber = ["74762","9203849212","827347","023489","82734","9203849212","197234","920384","92348","9203849212","102987","932809","9203849212","92348923132","23984829","10298734097","9328098"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              // child: Icon(Icons.add),
              // child: Column(
              //   children: [
              //     Container(
              //       width: 30,
              //       height: 30,
              //       child: Image.network("https://previews.123rf.com/images/pandavector/pandavector1901/pandavector190105171/126078877-vector-design-of-avatar-and-dummy-symbol-set-of-avatar-and-image-stock-vector-illustration.jpg"),
              //     ),
              //     Text("name")
              //   ],
              // ),
              backgroundImage: NetworkImage("https://previews.123rf.com/images/pandavector/pandavector1901/pandavector190105171/126078877-vector-design-of-avatar-and-dummy-symbol-set-of-avatar-and-image-stock-vector-illustration.jpg"),
              backgroundColor: Colors.green,
              radius: 30,
            ),
            title: Text(arrnames[index]),
            subtitle: Text(arrNumber[index]),
            trailing: Icon(Icons.add_call),
          );
        },
          itemCount: arrnames.length,
          separatorBuilder: (context , index){
          return Divider(height: 20, thickness: 1,);
          },
        ),
      ),
      // ListView.separated(itemBuilder: (context, index) {
      //   return Row(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           children: [
      //             Text(arrnames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
      //             Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Column(
      //                 children: [
      //                   Text(arrnames[index],style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700),),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           children: [
      //             Text(arrnames[index],style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),),
      //           ],
      //         ),
      //       ),
      //     ],
      //   );
      // },
      //   itemCount: arrnames.length,
      //   separatorBuilder: (context , index){
      //   return Divider(height: 100, thickness: 1,);
      //   },
      // ),


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
