import 'package:flutter_gallery/models/urls.dart';
import 'package:flutter_gallery/models/user.dart';

class Photo {
  final String id;
  final User user;
  final Urls urls;
  final String? description;

  Photo({
    required this.id,
    required this.user,
    required this.urls,
    this.description,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );
  }
}
