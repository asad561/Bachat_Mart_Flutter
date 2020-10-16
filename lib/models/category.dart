import 'dart:ui';

class category {
  int categoryId;
  String categoryName;
  String categoryDesc;
  int parent;
  Image image;

  category(
      {this.categoryId,
      this.categoryName,
      this.categoryDesc,
      this.parent,
      this.image});

  category.fromJson(Map<String, dynamic> json) {
    categoryId = json['id'];
    categoryName = json['name'];
    categoryDesc = json['description'];
    parent = json['parent'];
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
  }
}

class Image {
  String url;

  Image({
    this.url,
  });

  Image.fromJson(Map<String, dynamic> json) {
    url = json['src'];
  }
}
