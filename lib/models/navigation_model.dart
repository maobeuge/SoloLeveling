import 'package:equatable/equatable.dart';
import 'package:my_leveling/models/screen_model.dart';
import 'package:my_leveling/screens/daily_screen/daily_screen.dart';
import 'package:my_leveling/screens/profile_screen/profile_screen.dart';
import 'package:my_leveling/screens/progress_screen/progress_screen.dart';
import 'package:my_leveling/screens/settings_screen/settings_screen.dart';

enum NavigationIndex { daily, profile, progress, settings }

class NavigationModel extends Equatable {
  final int index;

  const NavigationModel({required this.index});

  @override
  List<Object?> get props => [index];

  static List<ScreenModel> screens = [
    ScreenModel(
      index: NavigationIndex.daily.index,
      label: 'daily',
      screenContent: const DailyScreen(),
    ),
    ScreenModel(
      index: NavigationIndex.profile.index,
      label: 'profile',
      screenContent: const ProfileScreen(),
    ),
    ScreenModel(
      index: NavigationIndex.progress.index,
      label: 'progress',
      screenContent: const ProgressScreen(),
    ),
    ScreenModel(
      index: NavigationIndex.settings.index,
      label: 'settings',
      screenContent: const SettingsScreen(),
    ),
  ];
}
