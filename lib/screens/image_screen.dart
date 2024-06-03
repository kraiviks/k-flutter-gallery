import 'package:flutter/material.dart';
import 'package:flutter_gallery/models/photo.dart';

class ImageScreen extends StatelessWidget {
  final Photo photo;

  const ImageScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(photo.user.name),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.network(
            photo.urls.regular,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
