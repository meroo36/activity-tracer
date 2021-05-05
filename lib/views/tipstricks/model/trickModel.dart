class Trick {
  String title;
  String imagePath;
  String bodyText;

  Trick({required this.title, required this.imagePath, required this.bodyText});

  Trick.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        imagePath = json['imagePath'],
        bodyText = json['bodyText'];
}
