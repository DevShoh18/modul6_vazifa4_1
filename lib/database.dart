import 'package:hive/hive.dart';
import 'package:modul6_vazifa4_1/user.dart';

class Database{
  var box = Hive.box('Database');

  void dataStore(User user){
    box.put('user', user.toJson());
  }
  User dataLoad(){
    print('email : ');
    print(User.fromJson(box.get('user')).password);
    print('password : ');
    print(User.fromJson(box.get('user')).email);
    return User.fromJson(box.get('user'));
  }
  void dataRemove(){
    box.delete('user');
  }


}