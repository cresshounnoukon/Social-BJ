import 'package:flutter/material.dart';

class SearchTiTleComponent   extends StatelessWidget {
  final String title;
  final String actionTitle;
  final void Function() onTap;
  const SearchTiTleComponent({super.key, required this.title, required this.actionTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,),
    TextButton(onPressed: onTap, child: Text(actionTitle)),
      ],
    );
  }
}
