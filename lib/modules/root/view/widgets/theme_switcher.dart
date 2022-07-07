part of '../../module.dart';

class _ThemeSwitcher extends ConsumerWidget {
  const _ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = ref.watch(themeProvider);

    IconData icon;
    ThemeMode target;
    switch (current) {
      case ThemeMode.system:
        icon = Icons.auto_mode;
        target = ThemeMode.light;
        break;
      case ThemeMode.light:
        icon = Icons.wb_sunny;
        target = ThemeMode.dark;
        break;
      case ThemeMode.dark:
        icon = Icons.nightlight_round;
        target = ThemeMode.system;
        break;
    }

    return GestureDetector(
      child: Icon(icon, color: Theme.of(context).colorScheme.onBackground),
      onTap: () => ref.read(themeProvider.state).state = target,
    );
  }
}
