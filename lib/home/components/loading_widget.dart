import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key, required this.onLoad});
  final void Function() onLoad;

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    final tween = Tween<double>(begin: 0.5, end: 0.2);
    _scaleAnimation = tween.animate(_controller);
    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onLoad.call();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return AnimatedScale(
          duration: const Duration(milliseconds: 300),
          scale: _scaleAnimation.value,
          child: Hero(
            tag: "Played",
            child: Center(
              child: SvgPicture.asset("assets/Loading.svg"),
            ),
          ),
        );
      },
    );
  }
}
