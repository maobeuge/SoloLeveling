import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:my_leveling/constants/ui_helper.dart';

class BottomBorder extends StatelessWidget {
  const BottomBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BottomBorderPainter(),
    );
  }
}

class BottomBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Offset.zero & size;
    Path path = Path();

    path.moveTo(rect.width * .1, rect.height * .6 - 1);
    path.lineTo(rect.width * .1, rect.height * .6 - 1);
    path.lineTo(rect.width * .16, rect.height * .6 - 1);
    path.lineTo(rect.width * .18, rect.height * .75 - 1);
    path.lineTo(rect.width * .26, rect.height * .75 - 1);
    path.lineTo(rect.width * .28, rect.height * .6 - 1);
    path.lineTo(rect.width * .9, rect.height * .6 - 1);
    path.lineTo(rect.width * .9, rect.height * .95 - 1);
    path.lineTo(rect.width * .24, rect.height * .95 - 1);
    path.lineTo(rect.width * .23, rect.height - 1);
    path.lineTo(rect.width * .15, rect.height - 1);

    canvas.drawPath(
      path,
      Paint()
        ..color = NotificationColor.firstBarColor
        ..strokeWidth = 1,
    );

    canvas.drawLine(
      Offset(rect.width * .9, rect.height * .95 - 1),
      Offset(rect.width * .24, rect.height * .95 - 1),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .9, rect.height * .95 - 1),
      Offset(rect.width * .24, rect.height * .95 - 1),
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
      Offset(rect.width * .24, rect.height * .95 - 1),
      Offset(rect.width * .23, rect.height - 1),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .24, rect.height * .95 - 1),
      Offset(rect.width * .23, rect.height - 1),
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
      Offset(rect.width * .23, rect.height - 1),
      Offset(rect.width * .15, rect.height - 1),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .23, rect.height - 1),
      Offset(rect.width * .15, rect.height - 1),
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
      Offset(rect.width * .15, rect.height - 1),
      Offset(rect.width * .1, rect.height * .6 - 1),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .15, rect.height - 1),
      Offset(rect.width * .1, rect.height * .6 - 1),
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
      Offset(rect.width * .16, rect.height * .6 - 1),
      Offset(rect.width * .18, rect.height * .75 - 1),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .16, rect.height * .6 - 1),
      Offset(rect.width * .18, rect.height * .75 - 1),
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
      Offset(rect.width * .18, rect.height * .75 - 1),
      Offset(rect.width * .26, rect.height * .75 - 1),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .18, rect.height * .75 - 1),
      Offset(rect.width * .26, rect.height * .75 - 1),
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
      Offset(rect.width * .26, rect.height * .75 - 1),
      Offset(rect.width * .28, rect.height * .6 - 1),
      Paint()
        ..color = Colors.blue.withOpacity(1)
        ..strokeWidth = 10
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 20),
    );
    canvas.drawLine(
      Offset(rect.width * .26, rect.height * .75 - 1),
      Offset(rect.width * .28, rect.height * .6 - 1),
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
