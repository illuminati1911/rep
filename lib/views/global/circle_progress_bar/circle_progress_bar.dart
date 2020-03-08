
import 'package:flutter/material.dart';
import 'package:rep/views/global/circle_progress_bar/circle_progress_bar_painter.dart';

class CircleProgressBar extends StatefulWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final double value;
  final Widget child;

  CircleProgressBar({
    Key key,
    this.backgroundColor,
    this.child,
    @required this.foregroundColor,
    @required this.value
  }) : super(key: key);

  @override
  _CircleProgressBarState createState() => _CircleProgressBarState();
}

class _CircleProgressBarState extends State<CircleProgressBar> with
SingleTickerProviderStateMixin {
  AnimationController _animController;
  Tween<double> valueTween;
  Tween<Color> foregroundColorTween;
  Animation<double> curve;

  @override
  void initState() {
    super.initState();

    this._animController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this
    );
    this._animController.forward();
    this.valueTween = Tween<double>(
      begin: 0,
      end: this.widget.value
    );
    this.curve = CurvedAnimation(
      parent: this._animController,
      curve: Curves.easeInOut
    );
  }

  @override
  void dispose() {
    this._animController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CircleProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    this.foregroundColorTween = ColorTween(
      begin: oldWidget?.foregroundColor,
      end: this.widget.foregroundColor
    );

    if (this.widget.value != oldWidget.value) {
      this.valueTween = Tween<double>(
        begin: this.valueTween?.evaluate(this._animController) 
          ?? oldWidget?.value
          ?? 0,
        end: this.widget.value ?? 1
      );
    }
    this._animController
        ..value = 0
        ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: AnimatedBuilder(
        animation: this.curve,
        child: Container(
          child: Center(child: this.widget.child),
        ),
        builder: (context, child) {
          return CustomPaint(
            child: child,
            foregroundPainter: CircleProgressBarPainter(
              backgroundColor: this.widget.backgroundColor,
              foregroundColor: this.widget.foregroundColor,
              percentage: this.valueTween.evaluate(this.curve),
              strokeWidth: 6
            ),
          );
        }
      )
      );
  }
}