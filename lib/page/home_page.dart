import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/bottom_bar.dart';
import '../widget/rounded_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          RoundedBox(
              child: Row(
            children: [
              VStack(crossAlignment: CrossAxisAlignment.center, [
                const Text("May").text.xl4.thin.tighter.make(),
                const Text("28")
                    .text
                    .xl6
                    .size(19)
                    .tightest
                    .bold
                    .color(Vx.hexToColor("#595236"))
                    .fontFamily(GoogleFonts.poppins().fontFamily!)
                    .make(),
              ]),
            ],
          )).p24()
        ],
      )),
      bottomNavigationBar: const AppBottomBar().p24(),
    );
  }
}
