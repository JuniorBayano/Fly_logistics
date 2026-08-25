import 'package:flutter_riverpod/legacy.dart';

class NavigationNotifier extends StateNotifier<int> {
  NavigationNotifier() : super(0);

  void changeIndex(int index) {
    state = index;
  }
}

final navigationProvider =
StateNotifierProvider<NavigationNotifier, int>(
      (ref) => NavigationNotifier(),
);