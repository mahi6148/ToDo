import 'package:flutter/material.dart';
import '../colors.dart';

Container get appBar {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(
          Icons.menu,
          color: ColortdBlack,
        ),
        Text(
          'ToDo list',
          style: TextStyle(
            color: ColortdBlack,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/default-user-icon-3.png'),
        )
      ],
    ),
  );
}
