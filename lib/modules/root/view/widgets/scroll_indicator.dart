part of '../../module.dart';

/* class _ScrollIndicator extends ConsumerWidget {
  final double totalWidth;

  const _ScrollIndicator({
    Key? key,
    required this.totalWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final horizontalPadding = MediaQuery.of(context).size.width * 0.01;
    final scrollProgress = ref.watch(
      navigationProvider.select((value) => value.scrollProgress),
    );

    final tileWidth = totalWidth / kSections.length;

    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: scrollProgress * (totalWidth - tileWidth) + horizontalPadding,
        ),
        child: SizedBox(
          width: tileWidth - horizontalPadding * 2,
          height: 3,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
 */