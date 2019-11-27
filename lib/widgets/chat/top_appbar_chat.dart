import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/chats.dart';
import 'package:flutter_chat_app/shared/custom_icon_button.dart';

class TopAppBarChat extends StatelessWidget {
  final Chats chats;

  const TopAppBarChat({Key key, this.chats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CustomIconButton(
                    onPressed: () {_goBack(context);},
                    iconData: Icons.arrow_back,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white54, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          offset: Offset(0, 5),
                          blurRadius: 25,
                        )
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        chats.urlPhotoUser,
                      ),
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            chats.nameUser,
                            style: TextStyle(
                              fontSize: 16,
                                fontWeight: FontWeight.w500
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 3,),
                          Text(
                            chats.online ? "Online" : "Offline",
                            style: TextStyle(
                              fontSize: 12,
                              color: chats.online ? Colors.green : Colors.grey[400],
                              fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                CustomIconButton(
                  onPressed: () {},
                  iconData: Icons.phone,
                ),
                CustomIconButton(
                  onPressed: () {},
                  iconData: Icons.videocam,
                ),
                CustomIconButton(
                  onPressed: () {},
                  iconData: Icons.more_vert,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _goBack(BuildContext context){
    Navigator.pop(context);
  }
}
