import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new
      MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          // Define the default Brightness and Colors
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],

          // Define the default Font Family
          fontFamily: 'Montserrat',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 26.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        home: new MyHomePage(title: 'Themes'),
      );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Text with a background color',
          ),
        ),
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: () async{
            final retIptu = await Navigator.push(context,
                MaterialPageRoute(builder: (context) => IPTU(title: 'Theme: IPTU'))
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class IPTU extends StatelessWidget {
  final String title;

  IPTU({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Theme(data: Theme.of(context).copyWith(primaryColor: Colors.red, accentColor: Colors.redAccent),
        child: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Center(
              child: Theme(
                data: Theme.of(context),
                child: Text(
                  'IPTU',
                ),
              ),
            ),
            floatingActionButton: Container(
              child: FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.add),
              ),
            ),
          )
    );
  }
}


