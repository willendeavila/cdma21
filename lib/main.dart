import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Computador'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('CDM - Tarefa A2.1'))),
        body: Column(children: [
          Container(
              margin: EdgeInsets.all(20.0),
              child: Center(
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _products.add('Mouse');
                      });
                    },
                    child: Text(
                      'Olá Mundo!',
                      style: TextStyle(fontSize: 22),
                    )),
              )),
          Column(
              children: _products
                  .map((element) => Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              child: Text(
                                element,
                                style: TextStyle(fontSize: 18),
                              ),
                              padding: EdgeInsets.all(5.0),
                            )
                          ],
                        ),
                      ))
                  .toList()),
        ]),
      ),
    );
  }
}
