import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final Icon icon;

  const Header(this.icon, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundColor: Theme.of(context).primaryColor,
          child: icon,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 27,
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}
