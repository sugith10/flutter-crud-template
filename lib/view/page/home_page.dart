import 'package:flutter/material.dart';
import 'package:flutter_crud/controller/data_controller.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/app_dialog.dart';
import '../widget/bottom_bar.dart';
import '../widget/date_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DataController dataController = DataController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const DateWidget().p24(),
          Expanded(
              child: ListView.builder(
                  itemCount: dataController.noteList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text("${index + 1}"),
                      title: dataController.noteList[index].title.text.make(),
                      subtitle:
                          DataController().noteList[index].subtitle.text.make(),
                      shape: const BeveledRectangleBorder(),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              dataController.removeNote(index);
                            },
                            icon: const Icon(Icons.delete),
                          ),
                          IconButton(
                            onPressed: () {
                              AppDialog.show(context: context,
                              title: dataController.noteList[index].title,
                              subtitle: dataController.noteList[index].subtitle,
                             );
                            },
                            icon: const Icon(Icons.edit),
                          )
                        ],
                      ),
                    );
                  }).p(22))
        ],
      )),
      bottomNavigationBar: const AppBottomBar().p20(),
    );
  }
}
