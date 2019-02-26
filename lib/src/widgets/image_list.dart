import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
          margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                child: Image.network(image.url),
                padding: EdgeInsets.only(bottom: 5.0),
              ),
              Text(image.title)
            ]
          ),
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Colors.grey)
          ),
        );
  }
}
 