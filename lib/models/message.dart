import 'package:flutter_chat_app/enums/MessageSenderEnum.dart';

class Message {
  String message;
  MessageSenderEnum messageSenderEnum;
  String time;

  Message({
    this.message,
    this.messageSenderEnum,
    this.time,
  });
}
