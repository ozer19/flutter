import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdyA8qJTdfCFUyhz8defsm7Pwp3accYUatfw&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 100,
          width: 300,
          child: PngImage(name: ImageItems().appleBookWithoutPath),
        ),
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdyA8qJTdfCFUyhz8defsm7Pwp3accYUatfw&usqp=CAU',
          errorBuilder: (context, error, stackTrace) =>
              Icon(Icons.abc_outlined),
        )
      ]),
    );
  }
}

class ImageItems {
  final String appleWithBook =
      "assets/apple-and-book-png-transparent-apple-and-book-images-274565.png";
  final String appleBook = "assets/png/ic_apple_with_school.png";
  final String appleBookWithoutPath = "ic_apple_with_school";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
