import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rep/assets/strings.dart';
import 'package:rep/general/rep_styles.dart';

import 'dashboard_base_widget.dart';

class StartWorkoutWidget extends StatelessWidget {
  final Function() onTap;

  StartWorkoutWidget({Key key, this.onTap}) : super();

  @override
  Widget build(BuildContext context) {
    return DashBoardBaseWidget(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(Strings.startWorkoutWidgetTitle,
                style: RepStyles.warningRedBold()),
            Icon(Icons.arrow_forward_ios)
          ]),
      onTap: onTap,
    );
  }
}
