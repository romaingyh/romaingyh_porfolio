part of '../module.dart';

final navigationProvider =
    StateNotifierProvider<NavigationNotifier, NavigationState>(
  (ref) => NavigationNotifier(),
);

class NavigationNotifier extends StateNotifier<NavigationState> {
  NavigationNotifier()
      : super(const NavigationState(0, 0, NavigationSource.click, 0));

  void navigateToSection(Section section) {
    if (section.index == state.index) return;
    state = state.copyWith(
      index: kSections.indexOf(section),
      source: NavigationSource.click,
      delta: sqrt(pow(section.index - state.index, 2)).toInt(),
    );
  }

  void onScroll(int index) {
    state = state.copyWith(
      index: index,
      source: NavigationSource.scroll,
      //scrollProgress: position.pixels / position.maxScrollExtent,
    );
  }
}

class NavigationState {
  final int index;
  final int delta;
  final NavigationSource source;
  final double scrollProgress;

  const NavigationState(
    this.index,
    this.delta,
    this.source,
    this.scrollProgress,
  );

  NavigationState copyWith({
    int? index,
    int? delta,
    NavigationSource? source,
    double? scrollProgress,
  }) {
    return NavigationState(
      index ?? this.index,
      delta ?? this.delta,
      source ?? this.source,
      scrollProgress ?? this.scrollProgress,
    );
  }
}

enum NavigationSource {
  click,
  scroll,
}
