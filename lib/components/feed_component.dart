import 'package:flutter/material.dart';

import '../style/default_values.dart';
import 'x_text_horizontal_button.dart';

class FeedComponent extends StatelessWidget {
  FeedComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          //   color: Colors.red,
          border: Border.all(color: Theme.of(context).splashColor),
          borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {},
            contentPadding:
                EdgeInsets.only(left: XPadding, right: XPadding, top: XPadding),
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/onboarding/2.png"),
            ),
            title: const Text("Jana Absould"),
            subtitle: const Text("Artist"),
            trailing: const Icon(Icons.more_horiz_outlined),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: XPadding, horizontal: XPadding / 2),
              height: XPadding * 20,
              //width: double.infinity,
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  //   borderRadius: BorderRadius.circular(XPadding*2),
                  //  border: Border.all(color: Colors.black26),
                  image: DecorationImage(
                      image: AssetImage("assets/images/onboarding/11.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.center)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(.8),
                      child: const Icon(
                        Icons.file_copy_outlined,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: XPadding,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: XPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                XTextHorizontalButton(
                  title: 'Like',
                  icon: Icon(
                    Icons.favorite_border,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                XTextHorizontalButton(
                  title: 'Comment',
                  icon: const Icon(
                    Icons.messenger_outline_rounded,
                  ),
                ),
                XTextHorizontalButton(
                  title: 'Share',
                  icon: const Icon(
                    Icons.share_outlined,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(XPadding),
            child: const Text("Liked by you and 500 others persons"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(onPressed: () {}, child: const Text("# Time")),
              TextButton(onPressed: () {}, child: const Text("# Time")),
              TextButton(onPressed: () {}, child: const Text("# Time")),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: XPadding, right: XPadding, bottom: XPadding*2),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget ultrices nulla. Duis enim nisi, maximus eget sodales nec, rhoncus ut mi. Nulla aliquet scelerisque augue, vel malesuada lorem ultricies eget.',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
