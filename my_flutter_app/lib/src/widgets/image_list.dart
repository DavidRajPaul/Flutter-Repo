import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
//          return new Image.network(images[index].url);
          return buildImage(images[index]);
        }
    );
  }

  Widget buildImage(ImageModel image) {
    return new Container(
      decoration: new BoxDecoration(
          border: new Border.all(color: Colors.red)
      ),
      padding: new EdgeInsets.all(20.0),
      margin: new EdgeInsets.all(20.0),
//      child: new Image.network(image.url),
      child: new Column(
        children: <Widget>[
          new Image.network(image.url),
          new Padding(
              padding: new EdgeInsets.only(
                  top: 10.0
              ),
              child: new Text
                (
                image.title,
                style: new TextStyle(
                    fontWeight: FontWeight.bold
                ),
              )
          )
        ]
        ,
      )
      ,
    );
  }

}