import 'package:flutter/material.dart';

class SliderThumbShape extends SliderComponentShape {

   SliderThumbShape({this.num = "0.0"});
  String num;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(10.0);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        Animation<double>? activationAnimation,
        @required Animation<double>? enableAnimation,
        bool? isDiscrete,
        TextPainter? labelPainter,
        RenderBox? parentBox,
        @required SliderThemeData? sliderTheme,
        TextDirection? textDirection,
        double? value,
        double? textScaleFactor,
        Size? sizeWithOverflow,
      }) {
    assert(enableAnimation != null);
    assert(sliderTheme != null);
    assert(sliderTheme!.disabledThumbColor != null);
    assert(sliderTheme!.thumbColor != null);
    assert(!sizeWithOverflow!.isEmpty);

    final Canvas canvas = context.canvas;
    final Tween<double> radiusTween = Tween<double>(begin: 0.0, end: 10.0);

    final double radius = radiusTween.evaluate(enableAnimation!);

      Paint paint = Paint()..color = Color(0xffF8CA2E);
      paint.style = PaintingStyle.fill;
      canvas.drawRRect(
        RRect.fromRectXY(Rect.fromCenter(center: center, width: 3.5 * radius, height: 2 * radius),10,10), paint);

      {
        final textStyle = TextStyle(
          color: Colors.black,
          fontSize: 12,
        );
        final textSpan = TextSpan(
          text: num,
          style: textStyle,
        );
        final textPainter = TextPainter(
          text: textSpan,
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        );
        textPainter.layout();
        Offset imageOffset = Offset(
          center.dx - (textPainter.width / 2),
          center.dy - ( (textPainter.height)/ 2),
        );
        textPainter.paint(canvas, imageOffset);
      }

    }
  }
