import 'dart:convert';
import 'package:api/controlers/posts_controller.dart';
import 'package:api/models/posts_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api/widgets/custom_button_widget.dart';

class OnePage extends StatefulWidget {
  OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  final PostsController _controller = PostsController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
                animation:
                    Listenable.merge([_controller.posts, _controller.inLoader]),
                builder: (_, __) => _controller.inLoader.value
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _controller.posts.value.length,
                        itemBuilder: (__, index) => ListTile(
                              title: Text(_controller.posts.value[index].title),
                            ))),
            SizedBox(height: 10),
            CustomButtonWidget(
              onPressed: () {
                _controller.callAPI();
                /* Navigator.of(context)
                    .pushReplacementNamed('/twoPage', arguments: 'teste')
                    .then((value) => print(value));*/
              },
              title: 'Sortear número aleatório',
              //titleSize: 18,
            ),
          ],
        )),
      ),
    );
  }
}
