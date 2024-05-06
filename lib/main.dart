import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home: MyApp()
  ));
}

class MyApp extends StatefulWidget {
MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  var name = ['대니얼', '팀', '스티븐'];
  var like = [0, 0, 0];

  @override
  build(context) {

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(context.findAncestorWidgetOfExactType<MaterialApp>());
            showDialog(context: context, builder: (context) {
              return Dialog(child: Text('안녕'));
            });
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(name[i]),
                trailing: ElevatedButton(child: Text('좋아요'), onPressed: () {
                  setState(() {
                    like[i]++;
                  });
                },),
                leading: Image.asset('profile.png'),
              );
            },
        ),

       );


  }
}
