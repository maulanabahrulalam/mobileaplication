import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),// panggil fristscreen disini

    );
  }
}

class FirstScreen extends StatelessWidget {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white,),
              onPressed: () {},
            ),
            title: Text('First Screen'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {},
              ),
            ],
          ),
          body: Center(
            child: Text('Hello world!'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          )
      );
    }

  void setState(Null Function() param0) {}
  }