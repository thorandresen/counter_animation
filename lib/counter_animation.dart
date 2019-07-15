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
        AnimationController(duration: Duration(seconds: 4), vsync: this);
    _animation = IntTween(begin: 10, end: 0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeOut));

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        builder: (BuildContext context, Widget child) {
          return Text(_animation.value.toString(),
              style: TextStyle(fontSize: 52.0));
        });
  }
}

/// The animation class.
class CounterAnimation extends StatefulWidget {
  @override
  CounterAnimationState createState() => new CounterAnimationState();
}
