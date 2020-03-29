import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _tarefas = ['Estudar'];
  String value = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('CDM - Tarefa A2.1'))),
        body: Column(children: [
          
          Container(
              color: Colors.white,
              child: TextField(
                  decoration: InputDecoration(icon: Icon(Icons.event_note), hintText: 'Informe sua tarefa'),
                    onChanged: (text) {
                    value = text;
                  },
              )
          ),
          
          
          Container(
              margin: EdgeInsets.all(20.0),
              child: Center(
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                          _tarefas.add(value);
                      });
                    },
                    child: Text(
                      'Add Tarefa',
                      style: TextStyle(fontSize: 22),
                    )),
              )),
          Column(
              children: _tarefas
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


