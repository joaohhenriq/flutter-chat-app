import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_app/shared/custom_icon_button.dart';

class BottomTextFieldChat extends StatefulWidget {

  final Function onPressed;

  const BottomTextFieldChat({Key key, this.onPressed}) : super(key: key);

  @override
  _BottomTextFieldChatState createState() => _BottomTextFieldChatState();
}

class _BottomTextFieldChatState extends State<BottomTextFieldChat> {
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.fromLTRB(15, 3, 5, 3),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: message,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(12, 0, 4, 0),
              child: CustomIconButton(
                iconData: Icons.send,
                onPressed: _onPressed,
              ),
            )
          ],
        ),
      ),
    );
  }

  _onPressed(){
    widget.onPressed(message.text);
    message.text = "";
  }
}
