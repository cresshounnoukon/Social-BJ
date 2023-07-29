import 'package:flutter/material.dart';

import '../style/default_values.dart';

class FeedFormScreen extends StatefulWidget {
  FeedFormScreen({super.key});

  @override
  State<FeedFormScreen> createState() => _FeedFormScreenState();
}

class _FeedFormScreenState extends State<FeedFormScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Create New Post",
          ),
          actions: [TextButton(onPressed: () {}, child: Text("Post"))],
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          bottom: false,
          child: Container(
              padding: EdgeInsets.symmetric(vertical: XPadding, horizontal: 25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: XPadding, horizontal: 20),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Theme.of(context).shadowColor),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/onboarding/3.png"),
                            ),
                            contentPadding: EdgeInsets.zero,
                            title: Text("Cress HOUNNOUKON"),
                            subtitle: Text("From Bénin"),
                            trailing: TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_drop_down_sharp),
                                label: Text("Public")),
                          ),
                          SizedBox(
                            height: XPadding,
                          ),
                          Container(
                            height: 200,
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              children: List.generate(4, (index) {
                                String name =
                                    "assets/images/onboarding/${index + 1}.png";
                                return Container(
                                  height: 200,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 8),
                                  margin: EdgeInsets.only(right: XPadding),
                                  width:
                                      MediaQuery.of(context).size.width * 0.55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(name),
                                          fit: BoxFit.cover,
                                          filterQuality: FilterQuality.low)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CircleAvatar(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.close,
                                              color: Colors.white,
                                            )),
                                        backgroundColor:
                                            Colors.black.withOpacity(0.7),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.description_outlined,
                                                  color: Colors.white,
                                                )),
                                            backgroundColor:
                                                Colors.black.withOpacity(0.7),
                                          ),
                                          SizedBox(
                                            width: XPadding,
                                          ),
                                          CircleAvatar(
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.brush_outlined,
                                                  color: Colors.white,
                                                )),
                                            backgroundColor:
                                                Colors.black.withOpacity(0.7),
                                          )
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                      )
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(
                            height: XPadding,
                          ),
                          TextFormField(
                            scrollPadding: EdgeInsets.zero,
                            maxLines: 4,
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: XPadding,
                    ),
                    Text("All post on",
                        style: Theme.of(context).textTheme.bodyLarge),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      value: true,
                      onChanged: (value) {},
                      title: Text("Facebook"),
                    ),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      value: true,
                      onChanged: (value) {},
                      title: Text("Twitter"),
                    ),
                  ],
                ),
              )),
        ),
        bottomSheet: BottomAppBar(
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.photo_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.mic_none),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
