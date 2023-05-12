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
  var phoneNumber = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('User Input'),
      ),
      body: Center(
          child: Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    // enabled: false,
                    controller: phoneNumber,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Enter Your Phone",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Colors.blueGrey, width: 2),
                        ),
                        // suffixText: "Username exits",

                        // suffixIcon: IconButton(
                        //   icon: Icon(
                        //     Icons.remove_red_eye_outlined,
                        //     color: Colors.blue,
                        //   ),
                        //   onPressed: () {},
                        // ),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.blue,
                        )
                        // border: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(8),
                        //     borderSide: BorderSide(
                        //       color: Colors.blue,
                        //       width: 2,
                        ),
                  ),
                  Container(
                    height: 11,
                  ),
                  TextField(
                    controller: passText,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 2),
                      ),
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(8),
                      //     borderSide: BorderSide(
                      //       color: Colors.blue,
                      //     ))
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.blue,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.blue,
                        ),
                        onPressed: () {

                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: 300,
                      child: ElevatedButton(onPressed: () {
                        String emailname = phoneNumber.text.toString();
                        String password = passText.text.toString();
                        print(emailname);
                        print(password);
                      }, child: Text('login')),
                    ),
                  )
                ],
              ))), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
