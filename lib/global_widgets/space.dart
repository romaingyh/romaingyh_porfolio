import 'package:flutter/material.dart';

class HSpace extends StatelessWidget {
  final double ratio;

  const HSpace({Key? key, this.ratio = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.01 * ratio);
  }
}

class VSpace extends StatelessWidget {
  final double ratio;

  const VSpace({Key? key, this.ratio = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.width * 0.01 * ratio);
  }
}
