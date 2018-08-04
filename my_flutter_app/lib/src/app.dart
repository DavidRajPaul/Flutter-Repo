import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AppState();
  }
}

//Widget State Class
class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return _getMyApp();
  }
}

//var a = () => print(''); Can be declared like this too
//var b = (String s) { return s; } ;Can be declared like this too


//MaterialApp function that returns Material App
MaterialApp _getMyApp() {
  //_ before variable means private
  return new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'App Bar',
          style: new TextStyle(
              fontStyle: FontStyle.italic
          ),
        ),
      ),
      floatingActionButton: new Builder(
          builder: (BuildContext context) {
            return new FloatingActionButton(
                child: new Icon(Icons.add),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(
                        content: new Text("Hi there!!!!"),
                      )
                  );
                }
            );
          }
      ),
    ),
    theme: new ThemeData.dark(),
  );
}
