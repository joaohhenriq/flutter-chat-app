import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/chats.dart';
import 'package:flutter_chat_app/widgets/chats/bottom_appbar_chats.dart';
import 'package:flutter_chat_app/widgets/chats/floating_action_button_chats.dart';
import 'package:flutter_chat_app/widgets/chats/tile_chats.dart';
import 'package:flutter_chat_app/widgets/chats/top_appbar_chats.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButtonChats(),
        bottomNavigationBar: BottomAppBarChats(),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        TopAppBarChats(),
        Expanded(
          child: ListView.builder(
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              return TilesChats(
                chats: chatList[index],
                lastChat: index == chatList.length - 1,
              );
            },
          ),
        ),
      ],
    );
  }
}
