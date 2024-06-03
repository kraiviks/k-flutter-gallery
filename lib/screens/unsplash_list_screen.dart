import 'package:flutter/material.dart';
import '../models/photo.dart';
import '../widgets/photo_card.dart';
import '../services/unsplash_api_service.dart';

class UnsplashListScreen extends StatefulWidget {
  @override
  _UnsplashListScreenState createState() => _UnsplashListScreenState();
}

class _UnsplashListScreenState extends State<UnsplashListScreen> {
  List<Photo> photos = [];

  @override
  void initState() {
    super.initState();
    fetchPhotos();
  }

  Future<void> fetchPhotos() async {
    final unsplashService = UnsplashApiService();
    final response = await unsplashService.getPhotos();
    if (response.isNotEmpty) {
      setState(() {
        photos = response;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unsplash Photos'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: photos.map((photo) => PhotoCard(photo: photo)).toList(),
      ),
    );
  }
}
