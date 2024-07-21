part of 'navigation_bloc.dart';

sealed class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

final class LoadNavigation extends NavigationEvent {}

final class ChangeIndex extends NavigationEvent {
  final int index;

  const ChangeIndex({required this.index});

  @override
  List<Object> get props => [index];
}
