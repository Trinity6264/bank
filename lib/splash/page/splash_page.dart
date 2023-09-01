import 'package:auto_route/auto_route.dart';
import 'package:bank/bank_observer.dart';
import 'package:bank/routes/bank_auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
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
    final tween = Tween<double>(begin: 1.0, end: 0.5);
    _scaleAnimation = tween.animate(_controller);
    yayaKK();
    _controller.addListener(listen);
  }

  void listen() {
    logger.d(_controller.value);
    if (_controller.value > 0.8) {
      context.pushRoute(const DashBoardPage());
    }
  }

  void yayaKK() async {
    await Future.delayed(const Duration(seconds: 1));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.removeListener(listen);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return AnimatedScale(
              duration: const Duration(milliseconds: 300),
              scale: _scaleAnimation.value,
              child: Hero(
                tag: "Play",
                child: SvgPicture.asset("assets/Loading.svg"),
              ),
            );
          },
        ),
      ),
    );
  }
}
