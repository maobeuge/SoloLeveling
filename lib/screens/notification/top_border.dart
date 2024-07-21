import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:my_leveling/constants/ui_helper.dart';

class TopBorder extends StatelessWidget {
  const TopBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TopBorderPainter(),
    );
  }
}

class TopBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    Path path = Path();

    path.moveTo(rect.width * .1, rect.height * .2);
    path.lineTo(rect.width * .1, rect.height * .2);
    path.lineTo(rect.width * .25, rect.height * .2);
    path.lineTo(rect.width * .30, rect.height * .4);
    path.lineTo(rect.width * .85, rect.height * .4);
    path.lineTo(rect.width * .9, rect.height * .2);
    path.lineTo(rect.width * .9, rect.top);
    path.lineTo(rect.width * .1, rect.top);
    canvas.drawPath(
      path,
      Paint()
        ..color = NotificationColor.firstBarColor
        ..strokeWidth = 1,
    );

    canvas.drawLine(
      Offset(rect.width * .1, rect.height * .2),
      Offset(rect.width * .25, rect.height * .2),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .1, rect.height * .2),
      Offset(rect.width * .25, rect.height * .2),
      Paint()
        ..strokeWidth = 2
        ..shader = ui.Gradient.linear(
          Offset(rect.width * .625, rect.height * .4 - 1),
          Offset(rect.width * .625, rect.height * .4 + 1),
          [
            NotificationColor.neonBarColor.withOpacity(.9),
            NotificationColor.neonBarColor,
            Colors.white,
            NotificationColor.neonBarColor,
            NotificationColor.neonBarColor.withOpacity(.9),
          ],
          [
            0.0,
            0.44,
            0.48,
            0.5,
            0.52,
          ],
          TileMode.clamp,
        ),
    );

    canvas.drawLine(
      Offset(rect.width * .25, rect.height * .2),
      Offset(rect.width * .30, rect.height * .4),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .25, rect.height * .2),
      Offset(rect.width * .30, rect.height * .4),
      Paint()
        ..strokeWidth = 2
        ..shader = ui.Gradient.linear(
          Offset(rect.width * .625, rect.height * .4 - 1),
          Offset(rect.width * .625, rect.height * .4 + 1),
          [
            NotificationColor.neonBarColor.withOpacity(.9),
            NotificationColor.neonBarColor,
            Colors.white,
            NotificationColor.neonBarColor,
            NotificationColor.neonBarColor.withOpacity(.9),
          ],
          [
            0.0,
            0.44,
            0.48,
            0.5,
            0.52,
          ],
          TileMode.clamp,
        ),
    );

    canvas.drawLine(
      Offset(rect.width * .30, rect.height * .4),
      Offset(rect.width * .85, rect.height * .4),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .30, rect.height * .4),
      Offset(rect.width * .85, rect.height * .4),
      Paint()
        ..strokeWidth = 2
        ..shader = ui.Gradient.linear(
          Offset(rect.width * .625, rect.height * .4 - 1),
          Offset(rect.width * .625, rect.height * .4 + 1),
          [
            NotificationColor.neonBarColor.withOpacity(.9),
            NotificationColor.neonBarColor,
            Colors.white,
            NotificationColor.neonBarColor,
            NotificationColor.neonBarColor.withOpacity(.9),
          ],
          [
            0.0,
            0.44,
            0.48,
            0.5,
            0.52,
          ],
          TileMode.clamp,
        ),
    );

    canvas.drawLine(
      Offset(rect.width * .85, rect.height * .4),
      Offset(rect.width * .9, rect.height * .2),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .85, rect.height * .4),
      Offset(rect.width * .9, rect.height * .2),
      Paint()
        ..strokeWidth = 2
        ..shader = ui.Gradient.linear(
          Offset(rect.width * .625, rect.height * .4 - 1),
          Offset(rect.width * .625, rect.height * .4 + 1),
          [
            NotificationColor.neonBarColor.withOpacity(.9),
            NotificationColor.neonBarColor,
            Colors.white,
            NotificationColor.neonBarColor,
            NotificationColor.neonBarColor.withOpacity(.9),
          ],
          [
            0.0,
            0.44,
            0.48,
            0.5,
            0.52,
          ],
          TileMode.clamp,
        ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
