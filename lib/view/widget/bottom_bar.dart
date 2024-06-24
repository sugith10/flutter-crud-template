import 'package:flutter/material.dart';

import 'app_dialog.dart';
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
            onPressed: () {
              AppDialog.show(
                context: context,
                
            
              );
            },
            child: const Icon(Icons.add),
          ),
          const Icon(Icons.home_filled),
          const Icon(Icons.search_rounded),
          const Icon(Icons.bookmark),
        ],
      ),
    );
  }
}
