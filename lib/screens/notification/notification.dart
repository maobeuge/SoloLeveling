import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_leveling/constants/ui_helper.dart';
import 'package:my_leveling/screens/notification/bottom_border.dart';
import 'package:my_leveling/screens/notification/top_border.dart';
import 'package:neon_widgets/neon_widgets.dart';

class NotificationPopUp extends StatefulWidget {
  const NotificationPopUp({super.key});

  @override
  State<NotificationPopUp> createState() => _NotificationPopUpState();
}

class _NotificationPopUpState extends State<NotificationPopUp> {
  double startHeight = 40;
  bool isAnimationDone = false;

  @override
  void initState() {
    super.initState();
    Future(() {
      setState(() {
        startHeight = MediaQuery.of(context).size.height * .4;
      });
    });
  }

  setAnimationDone() {
    setState(() {
      isAnimationDone = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      shape: const Border(),
      insetPadding: EdgeInsets.zero,
      child: AnimatedContainer(
        height: startHeight,
        width: MediaQuery.of(context).size.width,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInExpo,
        onEnd: setAnimationDone,
        child: Stack(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                color: Colors.black.withOpacity(.4),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(.3))),
                  child: Builder(
                    builder: (context) {
                      if (isAnimationDone) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white.withOpacity(.2)),
                              ),
                              child: NeonText(
                                text: "NOTIFICATION",
                                spreadColor: NotificationColor.neonBarColor,
                                blurRadius: 30,
                                textColor: Colors.white.withOpacity(.8),
                                fontFamily: "OpenSans",
                                textSize: 16,
                                letterSpacing: 2,
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: NeonText(
                                    text:
                                        "Aujourd'hui vous devrez realiser 10 pompes",
                                    spreadColor: NotificationColor.neonBarColor,
                                    blurRadius: 20,
                                    textColor: Colors.white.withOpacity(.8),
                                    fontFamily: "OpenSans",
                                    textSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: const TopBorder(),
            ),
            Positioned(
              height: 40,
              width: MediaQuery.of(context).size.width,
              bottom: 0,
              child: const BottomBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
