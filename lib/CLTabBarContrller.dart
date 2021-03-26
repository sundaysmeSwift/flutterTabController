import 'package:flutter/material.dart';

const TITLE = '标题标题标题标题标题标题标题';
const SUB_TITLE = '二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二';
const IMAGE_SRC =
    'http://cms-bucket.ws.126.net/2019/06/20/68fa7f186ffe4479ab27efabd4d94246.png';

class CLTabBarController extends StatefulWidget {
  final int index;
  final List<Widget> titles;
  final List<Widget> centerChilds;
  final List<Widget> childViews;
  CLTabBarController(
      {Key key, this.index, this.titles, this.centerChilds, this.childViews})
      : super(key: key);

  @override
  _CLTabBarControllerState createState() => _CLTabBarControllerState();
}

class _CLTabBarControllerState extends State<CLTabBarController>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: widget.index,
        length: widget.titles.length,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.pink,
              child: TabBar(
                labelColor: Colors.yellow,
                unselectedLabelColor: Colors.white,
                indicatorWeight: 1,
                isScrollable: true,
                // labelPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                labelStyle: TextStyle(fontSize: 14),
                tabs: widget.titles,
              ),
            ),
            ...widget.centerChilds,
            Expanded(
              flex: 1,
              child: TabBarView(children: widget.childViews),
            )
          ],
        ),
      ),
    );
  }
}

class ListViewContnet extends StatelessWidget {
  const ListViewContnet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
        ListTile(title: Text(TITLE)),
      ],
    );
  }
}
