import 'package:flutter/material.dart';

abstract class EffectWrapperBase extends StatefulWidget {
  late Widget child;
  late VoidCallback onAnimationCompleted;

  EffectWrapperBase({
    super.key,
    required this.child,
    required this.onAnimationCompleted,
  });
}

abstract class EffectWrapperBaseState<T extends EffectWrapperBase>
    extends State<T>
    with SingleTickerProviderStateMixin {
  void runAnimation();

  Widget buildEffect(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return buildEffect(context);
  }
}
