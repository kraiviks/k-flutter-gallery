import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/photo.dart';

const String _accessKey = 'D1qi9dy8yHfSFfRxNs8Ad0PGfxLFfFYEFxreZxBOjXo';

class UnsplashApiService {
  final String _baseUrl =
      'https://api.unsplash.com/photos/?per_page=30&client_id=$_accessKey';

  Future<List<Photo>> getPhotos() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return List<Photo>.from(data.map((photo) => Photo.fromJson(photo)));
    } else {
      return [];
    }
  }
}
