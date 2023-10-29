class MainState {
  final String locale;
  final bool isAdmin;
  final int currentPageIndex;
  final bool isAutopilotStarted;

  MainState({
    this.locale = 'en',
    this.isAdmin = false,
    this.currentPageIndex = 0,
    this.isAutopilotStarted = false,
  });
}

class MainInitial extends MainState {}
