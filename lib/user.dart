
class User{
  String? email;
  String? password;
  String? adress;
  User({this.email,this.password, this.adress});
  User.fromJson(Map<String, dynamic> json):
    email = json['email'],
    password = json['password'],
    adress = json['adress'];

  Map<String, dynamic> toJson()=>{
    'email':email,
    'password':password,
    'adress':adress,
  };
}