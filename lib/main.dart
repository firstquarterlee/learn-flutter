import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  // var name = '연락처앱';
  var name = ['대니얼', '팀', '스티븐'];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),
          onPressed: () {
            setState(() {
              a++;
            });
          },
        ),
        appBar: AppBar( title: Text( '연락처앱' ) ),
        bottomNavigationBar: BottomAppBar(),
        body: ListView.builder(
            itemCount: 300,
            itemBuilder: (c, i) {
              print(i);
              return ListTile(
                leading: Image.asset('profile.png'),
                title: Text('Daniel'),
              );
            },
        ),

       )
      );

  }
}
