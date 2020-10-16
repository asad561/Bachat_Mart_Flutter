class LoginResponseModel {
  bool success;
  int statuscode;
  String code;
  String message;
  Data data;

  LoginResponseModel({
    this.success,
    this.statuscode,
    this.code,
    this.message,
    this.data,
  });

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    statuscode = json['statuscode'];
    code = json['code'];
    message = json['meassage'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
}

Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['statuscode'] = this.statuscode;
    data['code'] = this.code;
    data['message'] = this.message;
    if(this.data != null){
      data['data'] = this.data.toJson();
    }

}
}

class Data {
  String token;
  int id;
  String email;
  String nicename;
  String firstname;
  String lastname;
  String displayname;

  Data(
      {this.token,
      this.id,
      this.email,
      this.nicename,
      this.firstname,
      this.lastname,
      this.displayname});

  Data.fromJson(Map<String, dynamic> json){
    token = json['token'];
    id = json['id'];
    email = json['email'];
    nicename = json['nicename'];
    firstname = json['firstname'];
    displayname = json['displayname'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['id'] = this.id;
    data['email'] = this.email;
    data['nicename'] = this.nicename;
    data['firstname'] = this.firstname;
    data['displayname'] = this.displayname;

    return data;
  }
}
