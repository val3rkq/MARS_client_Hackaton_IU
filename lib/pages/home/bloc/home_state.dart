class HomeState {
  final bool isAdmin;
  final int currentPageIndex;
  final bool isAutopilotStarted;
  HomeState({this.isAdmin = false, this.currentPageIndex = 0, this.isAutopilotStarted = false});
}

class HomeInitial extends HomeState {}