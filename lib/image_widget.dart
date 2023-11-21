import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        'https://images.unsplash.com/photo-1698875402466-4681d46fe561?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8fA%3D%3D';
    return Center(
        child: Column(
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  child: Image.asset(
                    "assets/images/photo-1682685797857-97de838c192e.avif",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.network(_imgUrl, fit: BoxFit.cover),
                ),
              ),
              Expanded(
                  child: Container(
                      child: CircleAvatar(
                backgroundImage: NetworkImage(_imgUrl),
                radius: 100,
              ))),
            ],
          ),
        ),
        Container(
          height: 200,
          width: 200,
          child: FadeInImage.assetNetwork(
              fit: BoxFit.cover,
              placeholder:
                  'assets/images/photo-1515646557491-e2615816e7f8.avif',
              image: _imgUrl),
        ),
        Expanded(
            child: Placeholder(
          fallbackHeight: 200,
          fallbackWidth: 200,
          color: Colors.red,
        ))
      ],
    ));
  }
}
