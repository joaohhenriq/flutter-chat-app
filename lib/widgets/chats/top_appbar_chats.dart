import 'package:flutter/material.dart';
import 'package:flutter_chat_app/shared/custom_icon_button.dart';

class TopAppBarChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 5, 8, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Messages",
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 17,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: <Widget>[
                CustomIconButton(
                  iconData: Icons.search,
                  onPressed: () {
                    print("Test icon button");
                  },
                ),
                CustomIconButton(
                  iconData: Icons.add_box,
                  onPressed: () {
                    print("Test icon button");
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
