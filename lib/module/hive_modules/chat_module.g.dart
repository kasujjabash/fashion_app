// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_module.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatAdapter extends TypeAdapter<Chat> {
  @override
  final int typeId = 2;

  @override
  Chat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Chat(
      username: fields[0] as String,
      message: fields[1] as String,
      timeStamp: fields[2] as DateTime,
      sender: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Chat obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.username)
      ..writeByte(1)
      ..write(obj.message)
      ..writeByte(2)
      ..write(obj.timeStamp)
      ..writeByte(3)
      ..write(obj.sender);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
