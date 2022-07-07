part of '../../module.dart';

class _AppBar extends StatelessWidget with PreferredSizeWidget {
  final double height;
  const _AppBar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, size, type) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
          vertical: 10,
        ),
        child: Row(
          children: [
            Text(
              'Romain Gyh',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(),
            const _ThemeSwitcher(),
            const SizedBox(width: 15),
            if (type == ScreenType.mobile) const _DrawerButton() else _items,
          ],
        ),
      ),
    );
  }

  Widget get _items => Row(
        children: [
          for (final section in kSections) ...[
            _SectionTile(section: section),
          ],
        ],
      );

  @override
  Size get preferredSize => Size(double.infinity, height);
}
