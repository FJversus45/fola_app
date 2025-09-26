import 'package:flutter/widgets.dart';

class BottomNavVisibilityNotifier {
  static final BottomNavVisibilityNotifier instance =
      BottomNavVisibilityNotifier._internal();

  factory BottomNavVisibilityNotifier() => instance;
  BottomNavVisibilityNotifier._internal();

  final ValueNotifier<bool> _showBottomNav = ValueNotifier<bool>(true);

  ValueNotifier<bool> get showBottomNav => _showBottomNav;

  void updateVisibility(bool isVisible) {
    _showBottomNav.value = isVisible;
  }
}
