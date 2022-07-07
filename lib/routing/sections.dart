import 'package:flutter/material.dart';
import 'package:porfolio/data/models/navigation/section.dart';
import 'package:porfolio/modules/app_section/module.dart';

const kSections = <Section>[
  AppSection(
    index: 0,
    name: 'Home',
    title: 'Portfolio',
    description: [
      'Cross-platforms iOS/Android modern & professional applications'
    ],
    mockups: [
      'lisa_1_theme',
      'lisa_2_theme',
      'projump_1',
      'projump_2',
      'bebest_1',
      'bebest_2',
    ],
    caption: 'Made with Flutter',
  ),
  AppSection(
    index: 1,
    name: 'Lisa',
    title: 'Lisa - Study',
    description: [
      'Students social network',
      'Revision sheets sharing',
      'Over 2000 users and 500 sheets'
    ],
    mockups: [
      'lisa_1_theme',
      'lisa_2_theme',
      'lisa_3_theme',
      'lisa_4_theme',
    ],
    playStoreLink:
        'https://play.google.com/store/apps/details?id=app.lisastudy.android',
    appStoreLink: 'https://apps.apple.com/fr/app/lisa-study/id1580315098',
    primaryColor: Color(0xFFC56CF0),
    direction: TextDirection.rtl,
  ),
  AppSection(
    index: 2,
    name: 'Gengod',
    title: 'Gengod',
    description: ['An ecosystem of applications for Athletes'],
    mockups: [
      'projump_1',
      'projump_2',
      'projump_3',
      'projump_4',
    ],
    caption: 'Work in progress..',
    primaryColor: Color(0xFFF1866C),
  ),
  AppSection(
    index: 3,
    name: 'BeBest',
    title: 'BeBest',
    description: ['Muscular reinforcement'],
    mockups: [
      'bebest_1',
      'bebest_2',
      'bebest_3',
      'bebest_4',
    ],
    playStoreLink:
        'https://play.google.com/store/apps/details?id=com.bebestapp.android',
    appStoreLink: 'https://apps.apple.com/fr/app/bebest/id1557236143',
    direction: TextDirection.rtl,
    primaryColor: Color(0xFFD5B4A3),
  ),
];
