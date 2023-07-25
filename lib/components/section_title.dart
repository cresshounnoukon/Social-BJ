import 'package:flutter/material.dart';

import '../utils/default_values.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String ?description  ;
  const SectionTitle({super.key, required this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title", style: Theme.of(context).textTheme. headlineLarge!.copyWith(
            fontWeight: FontWeight.bold,


          )),
          SizedBox(
            height:  XPadding,
          ),
          Text("$description", style: Theme.of(context).textTheme.bodyLarge!.copyWith(
             color: Colors.grey
          ),),
        ],
      ),
    );
  }
}
