import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_leveling/models/navigation_model.dart';
import 'package:my_leveling/models/screen_model.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial()) {
    on<LoadNavigation>((event, emit) {
      emit(NavigationLoaded(screen: NavigationModel.screens[0]));
    });

    on<ChangeIndex>((event, emit) {
      emit(NavigationLoaded(screen: NavigationModel.screens[event.index]));
    });
  }
}
