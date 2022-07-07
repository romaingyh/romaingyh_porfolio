part of '../../module.dart';

class _SectionTile extends HookConsumerWidget {
  final Section section;

  const _SectionTile({
    Key? key,
    required this.section,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hover = useState(false);
    final selected = ref.watch(
          navigationProvider.select((value) => value.index),
        ) ==
        section.index;

    final theme = Theme.of(context);
    final underlineColor = selected
        ? theme.primaryColor
        : hover.value
            ? theme.colorScheme.secondary
            : Colors.transparent;

    return GestureDetector(
      onTap: () {
        ref.read(navigationProvider.notifier).navigateToSection(section);
      },
      child: MouseRegion(
        onEnter: (event) => hover.value = true,
        onExit: (event) => hover.value = false,
        cursor: SystemMouseCursors.click,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.01,
          ),
          child: IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  section.name,
                  style: Theme.of(context).textTheme.button,
                ),
                Container(
                  height: 2,
                  decoration: BoxDecoration(
                    color: underlineColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
