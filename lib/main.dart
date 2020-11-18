import 'package:flutter/material.dart';
import 'home_page.dart';
import 'new_file.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new HomePage(),
      routes: <String , WidgetBuilder> {
    "/a": (BuildContext context) => new NewPage("new page")
  },
    );
  }
}
