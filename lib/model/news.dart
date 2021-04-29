class News {
  String id;
  String title;
  String desc;
  String imageUrl;
  String content;

  News({this.id, this.title, this.desc, this.imageUrl, this.content});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    desc = json['desc'];
    imageUrl = json['image_url'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['image_url'] = this.imageUrl;
    data['content'] = this.content;
    return data;
  }
}
