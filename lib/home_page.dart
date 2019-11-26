import 'package:flutter/material.dart';

enum MessageSeenEnum { NOT_SEEN, RECEIVED, SEEN, NONE }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 5,
          backgroundColor: Colors.blue[700],
          child: Icon(Icons.camera_alt),
          onPressed: () {
            print("hfsafas");
          },
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 7,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.view_list,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              SizedBox(width: 25),
              IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        _buildTopBar(),
        _buildListTile(
            online: true,
            nameUser: "João Henrique",
            urlPhotoUser:
                "https://images.complex.com/complex/image/upload/c_scale,q_auto,w_1920/fl_lossy,pg_1/complex_john-cena_ah_04_qaihpx.jpg",
            lastMessage: "Have you ever heard about Flutter?",
            time: "20:09",
            unSeenMessages: false,
            messageSeenEnum: MessageSeenEnum.NOT_SEEN),
        _buildListTile(
            online: false,
            nameUser: "Júlia Yumi",
            urlPhotoUser:
                "https://tconline.com.br/wp-content/uploads/2019/11/Scarlett-Johansson-2-e1574430293237.jpg",
            lastMessage: "Hi Júlia, how are you?",
            time: "15:23",
            unSeenMessages: false,
            messageSeenEnum: MessageSeenEnum.SEEN),
        _buildListTile(
            online: true,
            nameUser: "Marie",
            urlPhotoUser:
                "https://i2-prod.mirror.co.uk/incoming/article8673951.ece/ALTERNATES/s615b/CD3811204.jpg",
            lastMessage: "Flutter is amazing!! OMG",
            time: "12:40",
            unSeenMessages: true,
            unSeenMessagesCount: "10",
            messageSeenEnum: MessageSeenEnum.NONE),
      ],
    );
  }

  _buildTopBar() {
    return Material(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 5, 8, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Mensagens",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  _buildListTile(
      {bool online = false,
      String nameUser,
      String urlPhotoUser,
      String lastMessage,
      String time,
      bool unSeenMessages = false,
      String unSeenMessagesCount,
      MessageSeenEnum messageSeenEnum}) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white54, width: 3),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: Offset(0, 5),
                                blurRadius: 25)
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  urlPhotoUser,
                                ),
                              ),
                            ),
                            online
                                ? Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 3,
                                        ),
                                        shape: BoxShape.circle,
                                        color: Colors.green,
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              nameUser,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                messageSeenEnum == MessageSeenEnum.NONE
                                    ? Container()
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(right: 3),
                                        child: _buildMessaSeenIcon(
                                            messageSeenEnum)),
                                Expanded(
                                  child: Text(
                                    lastMessage,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.4),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.2),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  unSeenMessages
                      ? Container(
                          alignment: Alignment.center,
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.green[400], shape: BoxShape.circle),
                          child: Text(
                            unSeenMessagesCount,
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      : Container(
                          height: 20,
                          width: 20,
                        )
                ],
              )
            ],
          ),
        ),
        Container(
          height: 0.19,
          color: Colors.grey[400],
        )
      ],
    );
  }

  _buildMessaSeenIcon(MessageSeenEnum messageSeenEnum) {
    Icon icon;

    if (messageSeenEnum == MessageSeenEnum.NOT_SEEN) {
      icon = Icon(
        Icons.check,
        size: 15,
        color: Colors.grey[400],
      );
    } else if (messageSeenEnum == MessageSeenEnum.RECEIVED) {
      icon = Icon(
        Icons.done_all,
        size: 15,
        color: Colors.grey[400],
      );
    } else {
      icon = Icon(
        Icons.done_all,
        size: 15,
        color: Colors.blue,
      );
    }

    return icon;
  }
}
