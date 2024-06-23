import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundedBox extends StatelessWidget {
  final Widget child;
  const RoundedBox({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(child: child)
        .color(
          Vx.hexToColor("#fff6db"),
        )
        .roundedLg
        .p24
        .make();
  }
}
