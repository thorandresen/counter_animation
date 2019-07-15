library counter_animation;

import 'package:flutter/cupertino.dart';

/// The animation state class with the build method.
class CounterAnimationState extends State<CounterAnimation>
    with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(seconds: widget.duration), vsync: this);
    _animation = IntTween(begin: widget.begin, end: widget.end).animate(
        CurvedAnimation(parent: _animationController, curve: widget.curve));

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (BuildContext context, Widget child) {
          return Text(_animation.value.toString(),
              style: widget.textStyle);
        });
  }
}

/// The animation class.
class CounterAnimation extends StatefulWidget {
  final int begin; // The beginning of the int animation.
  final int end; // The the end of the int animation (result).
  final int duration; // The duration of the animation.
  final Curve curve; // The curve of the animation (recommended: easeOut).
  final TextStyle textStyle; // The TextStyle.

  const CounterAnimation({
    @required this.begin,
    @required this.end,
    @required this.curve,
    @required this.duration,
    this.textStyle,
  }) : assert(begin != null),
  assert(end != null),
  assert(curve != null),
  assert(duration != null);

  @override
  CounterAnimationState createState() => new CounterAnimationState();
}
