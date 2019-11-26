import 'package:flutter/material.dart';
import 'package:flutter_chat_app/widgets/chats/icon_button_chats.dart';

class BottomAppBarChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 7,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButtonChats(
              iconData: Icons.message,
              onPressed: () {
                print("Teste icon button");
              }),
          IconButtonChats(
              iconData: Icons.view_list,
              onPressed: () {
                print("Teste icon button");
              }),
          SizedBox(width: 25),
          IconButtonChats(
              iconData: Icons.call,
              onPressed: () {
                print("Teste icon button");
              }),
          IconButtonChats(
              iconData: Icons.person_outline,
              onPressed: () {
                print("Teste icon button");
              }),
        ],
      ),
    );
  }
}
