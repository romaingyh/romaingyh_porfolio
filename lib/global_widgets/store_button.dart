import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class StoreButton extends StatelessWidget {
  final String storeName, link;

  const StoreButton({
    Key? key,
    required this.storeName,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => launchUrlString(
          link,
          mode: LaunchMode.externalNonBrowserApplication,
        ),
        child: Image.asset(
          'assets/images/$storeName.png',
          fit: BoxFit.contain,
        ),
      );
}
