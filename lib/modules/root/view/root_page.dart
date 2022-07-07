part of '../module.dart';

class RootPage extends HookConsumerWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final appBarHeight = size.height * 0.1;

    final controller = ItemScrollController();
    final listener = ItemPositionsListener.create();
    listener.itemPositions.addListener(() {
      final positions = listener.itemPositions.value;
      ref
          .read(navigationProvider.notifier)
          .onScroll(positions.firstWhere((e) => e.itemLeadingEdge >= 0).index);
    });

    ref.listen<NavigationState>(
      navigationProvider,
      (previous, next) {
        if (next.source == NavigationSource.click) {
          controller.scrollTo(
            index: next.index,
            duration: Duration(milliseconds: 250 * next.delta),
            curve: Curves.ease,
          );
        }
      },
    );

    return ResponsiveBuilder(
      builder: (context, size, type) => Scaffold(
        appBar: _AppBar(height: appBarHeight),
        body: ScrollablePositionedList.builder(
          itemPositionsListener: listener,
          itemScrollController: controller,
          scrollDirection: Axis.vertical,
          physics: const ClampingScrollPhysics(),
          itemCount: kSections.length,
          itemBuilder: (context, index) => kSections[index],
        ),
        drawerEnableOpenDragGesture: true,
        onDrawerChanged: (value) =>
            ref.read(drawerProvider.state).state = value,
        drawer: type == ScreenType.mobile ? const _Drawer() : null,
      ),
    );
  }
}
