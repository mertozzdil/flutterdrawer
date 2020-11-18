import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String name = "Mert Özdil";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(name),
              accountEmail: new Text("mertozzdil@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                child: new Text(name[0]),
              ),
            ),
            new ListTile(
                title: new Text("Page One"),
                trailing: new Icon(Icons.arrow_drop_up),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/a");
                }),
            new ListTile(
                title: new Text("Page Two"),
                trailing: new Icon(Icons.arrow_drop_up),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/a");
                }),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}
