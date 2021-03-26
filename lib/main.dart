import 'package:flutter/material.dart';
import 'CLTabBarContrller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TabController'),
          backgroundColor: Colors.pink,
        ),
        body: TabControllerDemo(),
      ),
    );
  }
}

class TabControllerDemo extends StatefulWidget {
  TabControllerDemo({Key key}) : super(key: key);

  _TabControllerDemoState createState() => _TabControllerDemoState();
}

class _TabControllerDemoState extends State<TabControllerDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CLTabBarController(
      index: 1,
      titles: [Tab(text: '女装'), Tab(text: '女装2')],
      centerChilds: [Text('center'), Text('center'), Text('center')],
      childViews: [Text('1'), Text('2')],
    );
  }
}
