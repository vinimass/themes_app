import 'package:flutter/material.dart';
import 'theme.dart' as EstiloPadrao;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new
      MaterialApp(
        title: 'Flutter Demo',
        theme: EstiloPadrao.padrao,
        home: new MyHomePage(title: 'Theme Default'),
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
            'PADRÃO',
          ),
        ),
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: () async{
            final retIptu = await Navigator.push(context,
                MaterialPageRoute(builder: (context) => IPTU(title: 'Theme IPTU'))
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


