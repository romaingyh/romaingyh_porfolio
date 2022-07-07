part of '../module.dart';

class AppSection extends Section {
  final String title;
  final List<String> description;
  final String? caption;
  final Color? primaryColor;
  final List<String> mockups;
  final TextDirection direction;
  final String? appStoreLink;
  final String? playStoreLink;

  const AppSection({
    Key? key,
    required super.name,
    required super.index,
    required this.title,
    required this.description,
    this.caption,
    this.appStoreLink,
    this.playStoreLink,
    this.primaryColor,
    this.mockups = const <String>[],
    this.direction = TextDirection.ltr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBuilder(
      builder: (context, size, type) {
        switch (type) {
          case ScreenType.desktop:
          case ScreenType.tablet:
            return _desktopLayout(context, size);

          case ScreenType.mobile:
            return _mobileLayout(context, size);
        }
      },
    );
  }

  Widget _desktopLayout(BuildContext context, Size size) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      height: size.height * 0.9,
      child: Row(
        textDirection: direction,
        children: [
          Expanded(
            flex: 2,
            child: _AppInfos(
              title: title,
              description: description,
              caption: caption,
              primaryColor: primaryColor,
              appStoreLink: appStoreLink,
              playStoreLink: playStoreLink,
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: size.height * 0.7,
              child: Carousel(mockups: mockups, direction: direction),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mobileLayout(BuildContext context, Size size) {
    return SizedBox(
      height: size.height * 0.9,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
              vertical: size.height * 0.05,
            ),
            child: _AppInfos(
              title: title,
              description: description,
              caption: caption,
              primaryColor: primaryColor,
              appStoreLink: appStoreLink,
              playStoreLink: playStoreLink,
            ),
          ),
          Expanded(
            child: Carousel(mockups: mockups, direction: direction),
          ),
        ],
      ),
    );
  }
}
