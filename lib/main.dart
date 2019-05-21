import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool darkThemeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkThemeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: home()
    );
  }

  Widget home() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Theme'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Dark Theme"),
              trailing: Switch(
                value: darkThemeEnabled,
                onChanged: (changedTheme) {
                  setState(() {
                   darkThemeEnabled = changedTheme; 
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}