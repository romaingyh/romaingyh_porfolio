library root_module;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:porfolio/data/models/navigation/section.dart';
import 'package:porfolio/global_widgets/responsive.dart';
import 'package:porfolio/global_widgets/space.dart';
import 'package:porfolio/main.dart';
import 'package:porfolio/routing/sections.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

part 'logic/navigation_controller.dart';

part 'view/root_page.dart';
part 'view/widgets/app_bar.dart';
part 'view/widgets/drawer.dart';
part 'view/widgets/drawer_button.dart';
part 'view/widgets/scroll_indicator.dart';
part 'view/widgets/section_tile.dart';
part 'view/widgets/theme_switcher.dart';
