import 'package:academix_flutter/shared/models/user.dart';
import 'package:uuid/uuid.dart';

class MessageModel {
  late Uuid id;
  DateTime timestamp;
  UserModel sender;
  String text;

  MessageModel(this.timestamp, this.sender, this.text) {
    id = const Uuid();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MessageModel &&
        other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
