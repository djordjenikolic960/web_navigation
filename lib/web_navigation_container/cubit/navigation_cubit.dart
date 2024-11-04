import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_navigation/web_navigation_container/cubit/navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit()
      : super(
          NavigationState(
            selectedPage: MainContentPage.home,
          ),
        );

  // Set the selected page (for navigation from left menu)
  void selectPage(MainContentPage page) {
    emit(
      state.copyWith(
        selectedPage: page,
        isPanelOpen: false,
        selectedItem: null,
      ),
    );
  }

  // Open sliding panel with selected item
  void openPanel(String item) {
    emit(
      state.copyWith(
        isPanelOpen: true,
        selectedItem: item,
      ),
    );
  }

  // Close sliding panel
  void closePanel() {
    emit(
      state.copyWith(
        isPanelOpen: false,
        selectedItem: null,
      ),
    );
  }
}
