class HomeEvent {}

class ChangePage extends HomeEvent {

  final int newIndexPage;
  ChangePage({required this.newIndexPage});
}