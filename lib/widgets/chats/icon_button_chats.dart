import 'package:flutter/material.dart';

class IconButtonChats extends StatelessWidget {

  final IconData iconData;
  final Function onPressed;

  const IconButtonChats({Key key, this.iconData, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        iconData,
        color: Colors.black.withOpacity(0.8),
      ),
      onPressed: onPressed,
    );
  }
}
