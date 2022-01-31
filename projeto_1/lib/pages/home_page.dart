import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projeto_1/controllers/home_controller.dart';
import 'package:projeto_1/models/post_model.dart';
import 'package:projeto_1/repositories/home_repository_imp.dart';
import 'package:projeto_1/services/prefs_service.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());
  void initState() {
    super.initState();
    _controller.fetch();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/login', (_) => true);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ValueListenableBuilder<List<PostModel>>(
          valueListenable: _controller.posts,
          builder: (_, list, __) {
            return ListView.separated(
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (_, index) => ListTile(
                trailing: Icon(Icons.arrow_forward),
                leading: Text(list[index].id.toString()),
                title: Text(list[index].title),
                onTap: () => Navigator.of(context)
                    .pushNamed('/details', arguments: list[index]),
              ),
              separatorBuilder: (_, __) => Divider(),
            );
          }),
    );
  }
}
