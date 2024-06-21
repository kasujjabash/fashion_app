import 'package:hive_flutter/hive_flutter.dart';

part 'user_module.g.dart'; //? then run dart run build_runner build --delete-conflicting-outputs
// the part should have the same name as the file

@HiveType(typeId: 0) //Every table created , we give itan id
//extending user class to a hive object
class User extends HiveObject {
  //Username
  @HiveField(0) //? this field then give it the index
  String username;

  //phone
  @HiveField(1)
  String phonenumber;
  //email
  @HiveField(2)
  String email;

  //password
  @HiveField(3)
  String password;

  //Address
  @HiveField(4)
  String address;

  User(
      {required this.username,
      required this.phonenumber,
      required this.email,
      required this.password,
      required this.address});
}
