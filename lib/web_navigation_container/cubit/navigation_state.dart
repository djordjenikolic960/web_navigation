enum MainContentPage {
  home,
  settings,
  profile,
}

class NavigationState {
  final MainContentPage selectedPage;
  final bool isPanelOpen;
  final String? selectedItem;

  NavigationState({
    required this.selectedPage,
    this.isPanelOpen = false,
    this.selectedItem,
  });

  NavigationState copyWith({
    MainContentPage? selectedPage,
    bool? isPanelOpen,
    String? selectedItem,
  }) {
    return NavigationState(
      selectedPage: selectedPage ?? this.selectedPage,
      isPanelOpen: isPanelOpen ?? this.isPanelOpen,
      selectedItem: selectedItem ?? this.selectedItem,
    );
  }
}
