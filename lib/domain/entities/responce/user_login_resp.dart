class UserLoginRes {
  String? error;
  String? email;
  String? token;
  bool? admin;

  UserLoginRes({this.error, this.email, this.token, this.admin});

  UserLoginRes.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    email = json['email'];
    token = json['token'];
    admin = json['admin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['email'] = this.email;
    data['token'] = this.token;
    data['admin'] = this.admin;
    return data;
  }
}
