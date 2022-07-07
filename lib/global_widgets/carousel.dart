import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Carousel extends HookWidget {
  final List<String> mockups;
  final TextDirection direction;

  const Carousel({
    Key? key,
    required this.mockups,
    required this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final controller = useScrollController();
    final lastManualScroll = useState(
      DateTime.now().subtract(const Duration(seconds: 5)),
    );

    useEffect(() {
      final timer = Timer.periodic(
        const Duration(milliseconds: 8),
        (_) {
          if (DateTime.now().difference(lastManualScroll.value).inSeconds >=
              5) {
            controller.jumpTo(controller.position.pixels + 0.5);
          }
        },
      );
      return () => timer.cancel();
    }, []);

    return GestureDetector(
      onHorizontalDragDown: (_) => lastManualScroll.value = DateTime.now(),
      child: ListView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        reverse: direction == TextDirection.rtl,
        itemBuilder: (BuildContext context, int index) {
          final mockup = mockups[index % mockups.length]
              .replaceAll('theme', Theme.of(context).brightness.name);

          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.05,
              horizontal: size.width * 0.01,
            ),
            child: Material(
              elevation: 8,
              child: Image.asset(
                'assets/mockups/$mockup.PNG',
              ),
            ),
          );
        },
      ),
    );
  }
}
