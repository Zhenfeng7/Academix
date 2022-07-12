import 'package:academix_flutter/models/user.dart';
import 'package:uuid/uuid.dart';

class MessageModel {
  late Uuid id;
  DateTime timestamp;
  UserModel sender;
  String text;

  MessageModel(this.timestamp, this.sender, this.text) {
    id = const Uuid();
  }
}
