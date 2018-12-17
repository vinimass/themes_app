import 'package:flutter/material.dart';
import 'theme.dart' as Estilos;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new
      MaterialApp(
        title: 'Flutter Demo',
        theme: Estilos.padrao,
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
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      decoration: new BoxDecoration(
                        border: new Border.all(color: Estilos.CompanyColors.iptuPrimary, width: 2.0)
                      ),
                      child: new Padding(
                          padding: EdgeInsets.all(20.0),
                              child: new Column(
                                children: <Widget>[
                                  new RaisedButton(
                                    child: new Text("IPTU"),
                                    onPressed: ()async{
                                      final retIptu = await Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => IPTU(title: 'Theme IPTU'))
                                      );
                                    },
                                    color: Estilos.CompanyColors.iptuPrimary,
                                  )
                                ],
                              ),
                      ),
                    ),
                    new Container(
                      decoration: new BoxDecoration(
                          border: new Border.all(color: Estilos.CompanyColors.contadaguaPrimary, width: 2.0)
                      ),
                      child: new Padding(
                        padding: EdgeInsets.all(20.0),
                        child: new Column(
                          children: <Widget>[
                            new RaisedButton(
                              child: new Text("Conta D Água"),
                              onPressed: ()async{
                                final retContaAgua = await Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ContaDagua(title: 'Theme Conta D Água'))
                                );
                              },
                              color: Estilos.CompanyColors.contadaguaPrimary,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              )
            ],
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
    return new Theme(data: Theme.of(context).copyWith(primaryColor: Estilos.CompanyColors.iptuPrimary, accentColor: Estilos.CompanyColors.iptuAccent),
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

class ContaDagua extends StatelessWidget {
  final String title;

  ContaDagua({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Theme(data: Theme.of(context).copyWith(primaryColor: Estilos.CompanyColors.contadaguaPrimary, accentColor: Estilos.CompanyColors.contadaguaAccent),
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Theme(
              data: Theme.of(context),
              child: Text(
                'Conta D Água',
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

