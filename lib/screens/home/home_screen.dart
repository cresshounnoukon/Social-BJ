import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/feed_component.dart';
import 'package:flutterwithfirebase/components/x_circle_avatar_profile.dart';
import 'package:flutterwithfirebase/screens/status/status_screen.dart';


import '../../style/default_values.dart';
import '../feed_form_screen.dart';


class HomeScreen extends StatefulWidget {
    HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title:   Text("🇧🇯 Social BJ "),
          elevation: 0,
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) =>   FeedFormScreen(),
                          fullscreenDialog: true));
                },
                icon:   Icon(
                  Icons.add,
                  size: 25,
                )),
            IconButton(
                onPressed: () {},
                icon:   Icon(Icons.notifications_none_outlined, size: 25)),
            IconButton(
                onPressed: () {},
                icon:   Icon(Icons.settings_outlined, size: 25))


          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
                SizedBox(
                height: XPadding,
              ),
              Container(
                height: XPadding*11,

                padding:   EdgeInsets.only(left: XPadding),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => StatusScreen(), fullscreenDialog: true));
                        },
                        child:   XCircleAvatar(),
                      ),
                ),
              ),
                SizedBox(
                height: XPadding,
              ),
              ...List.generate(
                8,
                    (index) =>
                  Column(
                  children: [
                    FeedComponent(),
                    SizedBox(
                      height: XPadding,
                    ),
                  ],
                ),
              ).toList()
            ],
          ),
        ),
      );
  }
}
