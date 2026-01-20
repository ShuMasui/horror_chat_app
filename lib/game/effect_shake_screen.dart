import 'package:flutter/material.dart';
import 'package:horror_chat_app/game/effect_wapper_base.dart';

class EffectShakeScreen extends EffectWrapperBase {
  EffectShakeScreen({
    super.key,
    required super.onAnimationCompleted,
    required super.child,
  });

  @override
  State<EffectShakeScreen> createState() => _EffectShakeScreenState();
}

class _EffectShakeScreenState
    extends EffectWrapperBaseState<EffectShakeScreen> {
  late AnimationController _controller;
  late Animation<Offset> _shakeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
    );

    final Tween<Offset> tween = Tween<Offset>(
      begin: const Offset(-20, 0),
      end: const Offset(20, 0),
    );

    _shakeAnimation = tween.animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onAnimationCompleted.call();
      }
    });

    runAnimation();
  }

  @override
  void runAnimation() {
    _controller.repeat(count: 4);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget buildEffect(BuildContext context) {
    return AnimatedBuilder(
      animation: _shakeAnimation,
      builder: (context, child) {
        return Transform.translate(offset: _shakeAnimation.value, child: child);
      },
      child: widget.child,
    );
  }
}
