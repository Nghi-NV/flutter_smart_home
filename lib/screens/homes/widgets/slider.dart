import 'package:flutter/material.dart';
import 'dart:math' as math;

class SliderCustom extends StatefulWidget {
  final double width;
  final double value;
  final double min;
  final double max;
  final Function(double value)? onChange;

  const SliderCustom({
    Key? key,
    this.width = 100.0,
    this.value = 0.0,
    this.min = 0.0,
    this.max = 1.0,
    this.onChange,
  }) : super(key: key);

  @override
  _SliderCustomState createState() => _SliderCustomState();
}

class _SliderCustomState extends State<SliderCustom> {
  Offset _offset = const Offset(0, 0);

  @override
  void initState() {
    super.initState();
    final oneUnit = widget.width / (widget.max - widget.min);
    final initialOffsetX = oneUnit * widget.value;
    _offset = Offset(initialOffsetX, 0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        final oneUnit = widget.width / (widget.max - widget.min);
        var newOffsetX = _offset.dx + details.delta.dx;
        newOffsetX = math.max(newOffsetX, widget.min * oneUnit);
        newOffsetX = math.min(newOffsetX, widget.width);

        // widget.onChange!(newOffsetX / oneUnit);

        setState(() {
          _offset = Offset(newOffsetX, _offset.dy);
        });
      },
      child: Container(
        height: 40,
        width: widget.width,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
          // boxShadow: [
          //   BoxShadow(
          //     offset: const Offset(1, 1),
          //     color: Colors.grey.withOpacity(0.1),
          //     blurRadius: 1,
          //   ),
          //   BoxShadow(
          //     offset: const Offset(-1, -1),
          //     color: Colors.grey.withOpacity(0.1),
          //     blurRadius: 1,
          //   ),
          // ],
        ),
        child: Stack(
          children: [
            Transform.translate(
              offset: _offset - Offset(widget.width, 0),
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
