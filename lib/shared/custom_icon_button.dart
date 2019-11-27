import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {

  final IconData iconData;
  final Function onPressed;

  const CustomIconButton({Key key, this.iconData, this.onPressed}) : super(key: key);

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
