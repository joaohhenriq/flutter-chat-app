import 'package:flutter_chat_app/enums/MessageSeenEnum.dart';

class Chats {
  bool online;
  String nameUser;
  String urlPhotoUser;
  String lastMessage;
  String time;
  bool unSeenMessages;
  String unSeenMessagesCount;
  MessageSeenEnum messageSeenEnum;

  Chats(
      {this.online = false,
      this.nameUser,
      this.urlPhotoUser,
      this.lastMessage,
      this.time,
      this.unSeenMessages = false,
      this.unSeenMessagesCount,
      this.messageSeenEnum});
}

List<Chats> chatList = [
  Chats(
      online: true,
      nameUser: "João Henrique",
      urlPhotoUser:
          "https://images.complex.com/complex/image/upload/c_scale,q_auto,w_1920/fl_lossy,pg_1/complex_john-cena_ah_04_qaihpx.jpg",
      lastMessage: "Have you ever heard about Flutter?",
      time: "20:09",
      unSeenMessages: false,
      messageSeenEnum: MessageSeenEnum.NOT_SEEN),
  Chats(
    online: false,
    nameUser: "Júlia Yumi",
    urlPhotoUser:
        "https://tconline.com.br/wp-content/uploads/2019/11/Scarlett-Johansson-2-e1574430293237.jpg",
    lastMessage: "Hi Júlia, how are you?",
    time: "15:23",
    unSeenMessages: false,
    messageSeenEnum: MessageSeenEnum.SEEN,
  ),
  Chats(
    online: true,
    nameUser: "Marie",
    urlPhotoUser:
        "https://i2-prod.mirror.co.uk/incoming/article8673951.ece/ALTERNATES/s615b/CD3811204.jpg",
    lastMessage: "Flutter is amazing!! OMG",
    time: "12:40",
    unSeenMessages: true,
    unSeenMessagesCount: "10",
    messageSeenEnum: MessageSeenEnum.NONE,
  ),
  Chats(
    online: true,
    nameUser: "Marie",
    urlPhotoUser:
    "https://i2-prod.mirror.co.uk/incoming/article8673951.ece/ALTERNATES/s615b/CD3811204.jpg",
    lastMessage: "Flutter is amazing!! OMG",
    time: "12:40",
    unSeenMessages: true,
    unSeenMessagesCount: "10",
    messageSeenEnum: MessageSeenEnum.NONE,
  ),
  Chats(
    online: true,
    nameUser: "Marie",
    urlPhotoUser:
    "https://i2-prod.mirror.co.uk/incoming/article8673951.ece/ALTERNATES/s615b/CD3811204.jpg",
    lastMessage: "Flutter is amazing!! OMG",
    time: "12:40",
    unSeenMessages: true,
    unSeenMessagesCount: "10",
    messageSeenEnum: MessageSeenEnum.NONE,
  ),
  Chats(
    online: true,
    nameUser: "Marie",
    urlPhotoUser:
    "https://i2-prod.mirror.co.uk/incoming/article8673951.ece/ALTERNATES/s615b/CD3811204.jpg",
    lastMessage: "Flutter is amazing!! OMG",
    time: "12:40",
    unSeenMessages: true,
    unSeenMessagesCount: "10",
    messageSeenEnum: MessageSeenEnum.NONE,
  ),
  Chats(
    online: true,
    nameUser: "Marie",
    urlPhotoUser:
    "https://i2-prod.mirror.co.uk/incoming/article8673951.ece/ALTERNATES/s615b/CD3811204.jpg",
    lastMessage: "Flutter is amazing!! OMG",
    time: "12:40",
    unSeenMessages: true,
    unSeenMessagesCount: "10",
    messageSeenEnum: MessageSeenEnum.NONE,
  ),
  Chats(
    online: true,
    nameUser: "Marie",
    urlPhotoUser:
    "https://i2-prod.mirror.co.uk/incoming/article8673951.ece/ALTERNATES/s615b/CD3811204.jpg",
    lastMessage: "Flutter is amazing!! OMG",
    time: "12:40",
    unSeenMessages: true,
    unSeenMessagesCount: "10",
    messageSeenEnum: MessageSeenEnum.NONE,
  ),
  Chats(
    online: true,
    nameUser: "Marie",
    urlPhotoUser:
    "https://i2-prod.mirror.co.uk/incoming/article8673951.ece/ALTERNATES/s615b/CD3811204.jpg",
    lastMessage: "Flutter is amazing!! OMG",
    time: "12:40",
    unSeenMessages: true,
    unSeenMessagesCount: "10",
    messageSeenEnum: MessageSeenEnum.NONE,
  ),
];
