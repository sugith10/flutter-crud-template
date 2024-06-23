import 'package:flutter/material.dart';

import 'rounded_box.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const Icon(Icons.search),
          const Icon(Icons.calendar_month),
          const Icon(Icons.bookmark),
        ],
      ),
    );
  }
}
