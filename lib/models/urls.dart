class Urls {
  final String small;
  final String regular;
  final String? thumb;

  Urls({
    required this.small,
    required this.regular,
    this.thumb,
  });

  factory Urls.fromJson(Map<String, dynamic> json) {
    return Urls(
      small: json['small'] as String,
      regular: json['regular'] as String,
      thumb: json['thumb'] as String?,
    );
  }
}
