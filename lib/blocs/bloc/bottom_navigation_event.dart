part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class TabChangeEvent extends BottomNavigationEvent{
  final int newIndex;

  const TabChangeEvent(this.newIndex);
  @override
  List<Object> get props => [newIndex];
}
