import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/search/search_title_component.dart';

class SeachHistoryComponent extends StatelessWidget {
  final String title;
  final String actionTitle;
  final void Function() onTitleActionTap;

  const SeachHistoryComponent(
      {super.key,
      required this.title,
      required this.actionTitle,
      required this.onTitleActionTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchTiTleComponent(
              title: title, actionTitle: actionTitle, onTap: onTitleActionTap)
        ],
      ),
    );
  }
}
