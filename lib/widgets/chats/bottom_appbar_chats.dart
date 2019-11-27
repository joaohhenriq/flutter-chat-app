import 'package:flutter/material.dart';
import 'package:flutter_chat_app/shared/custom_icon_button.dart';

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
          CustomIconButton(
              iconData: Icons.message,
              onPressed: () {
                print("Teste icon button");
              }),
          CustomIconButton(
              iconData: Icons.view_list,
              onPressed: () {
                print("Teste icon button");
              }),
          SizedBox(width: 25),
          CustomIconButton(
              iconData: Icons.call,
              onPressed: () {
                print("Teste icon button");
              }),
          CustomIconButton(
              iconData: Icons.person_outline,
              onPressed: () {
                print("Teste icon button");
              }),
        ],
      ),
    );
  }
}
