import 'package:flutter/material.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(100),
      //   child: AppBar(
      //     backgroundColor: Colors.amber,
      //     centerTitle: true,
      //     title: Text('Hridoy'),
      //     leading: IconButton(
      //       onPressed: () {},
      //       icon: Icon(Icons.add),
      //     ),
      //     actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text('Hridoy'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        // bottom: TabBar(tabs: tabs),
      ),
    );
  }
}
