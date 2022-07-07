import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class Section extends HookConsumerWidget {
  final String name;
  final int index;

  const Section({
    Key? key,
    required this.name,
    required this.index,
  }) : super(key: key);
}
