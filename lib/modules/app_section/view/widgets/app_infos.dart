part of '../../module.dart';

class _AppInfos extends StatelessWidget {
  final String title;
  final List<String> description;
  final String? caption;
  final Color? primaryColor;
  final String? appStoreLink;
  final String? playStoreLink;

  const _AppInfos({
    Key? key,
    required this.title,
    required this.description,
    this.caption,
    this.primaryColor,
    this.appStoreLink,
    this.playStoreLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            title,
            style: theme.textTheme.headlineLarge!.copyWith(
              color: primaryColor,
            ),
          ),
        ),
        for (final line in description) ...[
          const VSpace(ratio: 0.5),
          Text(
            line,
            style: theme.textTheme.headlineSmall,
          ),
        ],
        if (caption != null) ...[
          const VSpace(),
          Text(
            caption!,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.secondary,
            ),
          ),
        ],
        if (playStoreLink != null || appStoreLink != null) ...[
          const VSpace(ratio: 2),
          _downloadButtons,
        ]
      ],
    );
  }

  Widget get _downloadButtons => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: StoreButton(storeName: 'play_store', link: playStoreLink!),
          ),
          const HSpace(),
          Expanded(
            child: StoreButton(storeName: 'app_store', link: appStoreLink!),
          ),
        ],
      );
}
