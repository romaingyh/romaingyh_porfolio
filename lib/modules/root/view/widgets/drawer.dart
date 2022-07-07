part of '../../module.dart';

class _Drawer extends ConsumerWidget {
  const _Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      backgroundColor: Theme.of(context).backgroundColor,
      child: ListView.separated(
        itemCount: kSections.length,
        separatorBuilder: (BuildContext context, int index) => const VSpace(),
        itemBuilder: (BuildContext context, int index) {
          final section = kSections[index];
          return ListTile(
            title: Text(section.name),
            style: ListTileStyle.drawer,
            onTap: () {
              Navigator.pop(context);
              ref.read(navigationProvider.notifier).navigateToSection(section);
            },
          );
        },
      ),
    );
  }
}
