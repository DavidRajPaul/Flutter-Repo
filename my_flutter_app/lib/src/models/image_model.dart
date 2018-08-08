class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic>parsedJson){
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }

//  The above code can also be mentioned like this
//  ImageModel.fromJson(Map<String, dynamic>parsedJson)
//      : id = parsedJson['id'],
//        url = parsedJson['url'],
//        title = parsedJson['title'];


}