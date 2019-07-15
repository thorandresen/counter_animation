import 'package:flutter/material.dart';
import 'package:counter_animation/counter_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = new TextStyle(fontSize: 58);

    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CounterAnimation(
                begin: 0,
                end: 50,
                duration: 5,
                curve: Curves.easeOut,
                textStyle: textStyle
            ),
          ],
        ),
      ),
    );
  }
}
