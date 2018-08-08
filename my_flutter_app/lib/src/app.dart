import 'package:flutter/material.dart';
import 'package:http/http.dart'
    show get; //show get returns only get function from Http package
import 'models/image_model.dart';
import 'dart:convert';
import '../src/widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AppState();
  }
}

//Widget State Class
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  @override
  Widget build(BuildContext context) {
    return _getMyApp();
  }

  void fetchImage(BuildContext context) async{
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
//    print(json.decode(response.body));
    var imageModel = new ImageModel.fromJson(json.decode(response.body));
    setState((){
      images.add(imageModel);
    });

//    setState(() {
//      counter += 1;
//    });
//    Scaffold.of(context).showSnackBar(
//        new SnackBar(
//          content: new Text("Hi there!!!!"),
//        )
//    );
  }

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
        body: new Center(
          child: new ImageList(images),
        ),
        floatingActionButton: new Builder(
          //Builder added only because the code is written in seperate function.
          //If used inside State class, no need of Builder.
            builder: (BuildContext context) {
              return new FloatingActionButton(
                  child: new Icon(Icons.add),
                  onPressed: () {
                    fetchImage(context);
                  }
              );
            }
        ),
      ),
      theme: new ThemeData.dark(),
    );
  }
}

//var a = () => print(''); Can be declared like this too
//var b = (String s) { return s; } ;Can be declared like this too


//MaterialApp function that returns Material App

