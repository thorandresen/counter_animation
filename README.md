# counter_animation

A very simple (50 lines of code, see Git rep) flutter package for animating a counter that decrements or increments an integer.

The package can be tweaked with duration.

## Usage

To use this plugin, add `counter_animation` as dependency to pubspec.yaml file.

### Example

The code below shows an integer that counts up to 50, while easing out.

```
import 'package:flutter/material.dart';
import 'package:counter_animation/counter_animation.dart';

CounterAnimation(
    begin: 0,
    end: 50,
    duration: 5,
    curve: Curves.easeOut,
    textStyle: textStyle
),
```

#### Example gif
![](counteranimation.gif) 