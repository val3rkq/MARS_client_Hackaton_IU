class MainEvent {}

class ChangePage extends MainEvent {

  final int newIndexPage;
  ChangePage({required this.newIndexPage});
}

class ChangeLocale extends MainEvent {}

class LoginAdmin extends MainEvent {}

class LogoutAdmin extends MainEvent {}

class AutopilotTap extends MainEvent {}