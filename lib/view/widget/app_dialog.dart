import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../util/color.dart';

final class AppDialog {
  AppDialog._();

  static show({
    required BuildContext context,

    String? title,
    String? subtitle,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: _Dialog(
              title: title,
              subtitle: subtitle,
            ).p24(),
          );
        });
  }
}

class _Dialog extends StatefulWidget {
  final String? title;
  final String? subtitle;
  const _Dialog({
    required this.title,
    required this.subtitle,
  });

  @override
  State<_Dialog> createState() => _DialogState();
}

class _DialogState extends State<_Dialog> {
  final _titleCntrl = TextEditingController();
  final _subtitleCntrl = TextEditingController();
  late final _isUpdate;

  @override
  void initState() {
    super.initState();
    if(widget.title == null && widget.subtitle == null){
      _isUpdate =false;
    }else{
      _isUpdate = true;
    }
    _titleCntrl.text = widget.title ?? "";
    _subtitleCntrl.text = widget.subtitle ?? "";
    
  }

  @override
  void dispose() {
    super.dispose();
    _titleCntrl.dispose();
    _subtitleCntrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VStack(
      axisSize: MainAxisSize.min,
      [
        TextField(
          controller: _titleCntrl,
          decoration: const InputDecoration(
            hintText: "Title",
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: tightGreen),
            ),
          ),
          maxLines: null,
        ),
        const SizedBox(height: 25),
        TextField(
          controller: _subtitleCntrl,
          decoration: const InputDecoration(
            hintText: "Content",
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: tightGreen),
            ),
          ),
          maxLines: null,
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            // _isUpdate ? 
          },
          style: ElevatedButton.styleFrom(backgroundColor: greenTouch),
          child: "Submit"
              .text
              .size(18)
              .color(Vx.hexToColor("#000000"))
              .tight
              .bold
              .letterSpacing(1)
              .uppercase
              .make(),
        ).centered()
      ],
    );
  }
}
