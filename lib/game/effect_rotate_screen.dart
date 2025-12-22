import 'package:flutter/material.dart';
import 'package:horror_chat_app/game/effect_wapper_base.dart';

class EffectRotateScreen extends EffectWrapperBase {
  EffectRotateScreen({
    super.key,
    required super.onAnimationCompleted,
    required super.child,
  });

  @override
  State<EffectRotateScreen> createState() => _EffectRotateScreenState();
}

class _EffectRotateScreenState
    extends EffectWrapperBaseState<EffectRotateScreen> {
  late AnimationController _controller;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );

    final Tween<double> tween = Tween(
      begin: 0.0,
      end: 360
    );

    _rotateAnimation = tween.animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        widget.onAnimationCompleted.call();
      }
    },);


    runAnimation();
  }

  @override
  void runAnimation() {
    _controller.repeat(count: 3);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget buildEffect(BuildContext context) {
    return AnimatedBuilder(
      animation: _rotateAnimation,
      builder: (context, child) {
        return Transform.rotate(angle: _rotateAnimation.value ,child: child);
      },
      child: widget.child,
    );
  }
}
