import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_leveling/constants/ui_helper.dart';
import 'package:my_leveling/screens/notification/notification.dart';
import 'package:my_leveling/services/landing_screen/navigation/navigation_bloc.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NavigationBloc()..add(LoadNavigation()),
        child: BlocBuilder<NavigationBloc, NavigationState>(
            builder: (context, state) {
          if (state is NavigationLoaded) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  radius: 1,
                  colors: [
                    BackgroundColor.landingRadial,
                    BackgroundColor.landingMain,
                  ],
                  center: Alignment.center,
                  stops: const [0.0, 1.0],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => showDialog(
                        context: context,
                        useSafeArea: false,
                        builder: (context) => const NotificationPopUp(),
                        barrierColor: Colors.transparent),
                    child: Text('TEST'),
                  ),
                ],
              ),
            );
          }
          return const CircularProgressIndicator();
        }),
      ),
    );
  }
}
