class HomeEvent {}

class ChangePage extends HomeEvent {

  final int newIndexPage;
  ChangePage({required this.newIndexPage});
}

class LoginAdmin extends HomeEvent {}

class LogoutAdmin extends HomeEvent {}

class AutopilotTap extends HomeEvent {}