part of '../../module.dart';

final drawerProvider = StateProvider<bool>((ref) => false);

class _DrawerButton extends HookConsumerWidget {
  const _DrawerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animation = useAnimationController(
      duration: const Duration(milliseconds: 250),
      initialValue: 1,
    );

    ref.listen<bool>(
      drawerProvider,
      (previous, next) {
        if (next) {
          animation.reverse();
        } else {
          animation.forward();
        }
      },
    );

    return InkWell(
      onTap: Scaffold.of(context).openDrawer,
      child: AnimatedIcon(
        icon: AnimatedIcons.close_menu,
        progress: animation,
      ),
    );
  }
}
