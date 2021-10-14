import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:lumilife/bloc/counter_bloc.dart';
import 'package:lumilife/routes.dart';
import 'package:lumilife/widgets/body_decoration/body_decoration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnim;

  Animatable<Color?> bgColor = TweenSequence<Color?>([
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(begin: Colors.red, end: Colors.blue),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(begin: Colors.blue, end: Colors.green),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(begin: Colors.green, end: Colors.yellow),
    ),
    TweenSequenceItem(
      weight: 1.0,
      tween: ColorTween(begin: Colors.yellow, end: Colors.red),
    ),
  ]);

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )
      ..forward()
      ..repeat(reverse: true);

    _colorAnim = bgColor.animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final countBloc = BlocProvider.of<CounterBloc>(context);
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        body: BodyDecoration(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Container(
                      padding: const EdgeInsets.all(24.0),
                      decoration: BoxDecoration(color: _colorAnim.value),
                      child: const Text('Tween Sequence'),
                    );
                  },
                ),
                const SizedBox(height: 32),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2.0 * math.pi,
                      child: Transform.scale(
                        scale: lerpDouble(0.1, 1.2, _controller.value)! * 1.0,
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: _colorAnim.value,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(2, 2),
                                blurRadius: 8,
                                color: _colorAnim.value!.withOpacity(0.4),
                                // spreadRadius: 2,
                              ),
                              BoxShadow(
                                offset: const Offset(-2, -2),
                                blurRadius: 8,
                                color: _colorAnim.value!.withOpacity(0.4),
                              ),
                            ],
                          ),
                          child: child,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 32),
                InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  onTap: () {
                    // Navigator.of(context).pushNamed(Routes.register);
                    Get.toNamed(Routes.register);
                  },
                  child: BlocBuilder<CounterBloc, int>(
                    builder: (context, count) => Text(
                      "Register $count",
                      style: const TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              onPressed: () {
                countBloc.increment();
                // context.read<CounterBloc>().increment();
              },
              child: const Icon(Icons.add),
              heroTag: null,
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              onPressed: () {
                countBloc.decrement();
                // context.read<CounterBloc>().decrement();
              },
              child: const Icon(Icons.remove),
              heroTag: null,
            ),
          ],
        ),
      ),
    );
  }
}
