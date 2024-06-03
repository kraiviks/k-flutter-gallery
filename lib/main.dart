import 'package:flutter/material.dart';
import 'package:flutter_gallery/screens/image_screen.dart';
import 'screens/unsplash_list_screen.dart';
import 'models/photo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unsplash Photos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => UnsplashListScreen(),
        '/photo': (context) => ImageScreen(
            photo: ModalRoute.of(context)!.settings.arguments as Photo),
      },
    );
  }
}
