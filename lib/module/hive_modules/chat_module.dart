import 'package:hive_flutter/hive_flutter.dart';

part 'chat_module.g.dart';// adpter

//give the module an id
@HiveType(typeId: 2)
class Chat extends HiveObject {
  //username
  @HiveField(0)
  String username;
  //message
  @HiveField(1)
  String message;
  //datetime
  @HiveField(2)
  DateTime timeStamp;
//sender
  @HiveField(3)
  String sender;

  Chat(
      {required this.username,
      required this.message,
      required this.timeStamp,
      required this.sender});
}
