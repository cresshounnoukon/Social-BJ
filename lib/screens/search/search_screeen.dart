import 'package:flutter/material.dart';

import '../../components/search/search_history_component.dart';
import '../../style/default_values.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(XPadding),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Search "Your Friend"',
                contentPadding: EdgeInsets.all(XPadding),
                filled: true,
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.mic_none),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: XPadding,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Chip(
                    label: Text("Discovery"),
                  ),
                  Chip(
                    label: Text("Person"),
                  ),
                  Chip(
                    label: Text("Event"),
                  ),
                  Chip(
                    label: Text("Tag"),
                  ),
                ],
              ),
            ),
            SeachHistoryComponent(
              title: "Recent",
              actionTitle: "see",
              onTitleActionTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
