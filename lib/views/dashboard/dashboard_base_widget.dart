
import 'package:flutter/material.dart';

class DashBoardBaseWidget extends StatelessWidget {
  final Widget child;
  final Function() onTap;  
  DashBoardBaseWidget({Key key, @required this.child, this.onTap}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14),
      child: Material(
        color: Colors.white.withOpacity(0.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: this.onTap,
          child: Container(
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withAlpha(35) 
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}