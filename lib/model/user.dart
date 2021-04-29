class User {
  String token;
  String fullname;
  String phone;
  String ranking;

  User({this.token, this.fullname, this.phone, this.ranking});

  User.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    fullname = json['fullname'];
    phone = json['phone'];
    ranking = json['ranking'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['fullname'] = this.fullname;
    data['phone'] = this.phone;
    data['ranking'] = this.ranking;
    return data;
  }
}
