import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({Key? key}) : super(key: key);
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> tarefas = [];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Lista de Tarefas'),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            Container(
              height: 400,
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: tarefas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(tarefas[index]),
                      onLongPress: () {
                        setState(() {
                          tarefas.removeAt(index);
                        });
                      },
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(Icons.add_alert),
            onPressed: () {
              if (_textEditingController.text.length > 0) {
                setState(() {
                  tarefas.add(_textEditingController.text);
                });
                _textEditingController.clear();
              }
            },
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                tarefas = [];
              });
              _textEditingController.clear();
            },
          )
        ],
      ),
    );
  }
}
