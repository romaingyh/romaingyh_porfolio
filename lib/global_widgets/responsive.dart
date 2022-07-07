import 'package:flutter/material.dart';

const kMobileWidth = 750;
const kTabletWidth = 1100;

bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width < kMobileWidth;

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width <= kTabletWidth &&
    MediaQuery.of(context).size.width >= kMobileWidth;

bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width > kTabletWidth;

T responsiveValue<T>(
  BuildContext context, {
  required T desktop,
  required T tablet,
  required T mobile,
}) =>
    isDesktop(context)
        ? desktop
        : isTablet(context)
            ? tablet
            : mobile;

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.desktop,
    this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > kTabletWidth) {
      return desktop;
    } else if (size.width >= kMobileWidth && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, Size size, ScreenType type)
      builder;

  const ResponsiveBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (size.width > kTabletWidth) {
      return builder(context, size, ScreenType.desktop);
    } else if (size.width >= kMobileWidth) {
      return builder(context, size, ScreenType.tablet);
    } else {
      return builder(context, size, ScreenType.mobile);
    }
  }
}

enum ScreenType {
  mobile,
  tablet,
  desktop,
}
