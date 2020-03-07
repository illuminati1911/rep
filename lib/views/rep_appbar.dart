import 'package:flutter/material.dart';
import 'package:rep/general/rep_colors.dart';
import 'package:rep/general/rep_styles.dart';

class RepAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  RepAppBar({Key key, @required this.title}) : super();

  final Widget leftButton =
      IconButton(icon: Icon(Icons.menu, color: Colors.white), onPressed: () {});
  final Widget rightButton = IconButton(
      icon: Icon(Icons.settings, color: Colors.white), onPressed: () {});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: RepColors.main,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                leftButton,
                Text(title, style: RepStyles.titleSmall()),
                rightButton
              ])),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
