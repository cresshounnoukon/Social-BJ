import 'package:flutter/material.dart';

import '../utils/default_values.dart';
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
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           ListTile(
onTap: (){

},
            contentPadding: EdgeInsets.only(left: XPadding, right: XPadding, top: XPadding),
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/onboarding/2.png"),
            ),
            title: Text("Jana Absould"),
            subtitle: Text("Artist"),
            trailing: Icon(Icons.more_horiz_outlined),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.zero,
              height: 250,
              //width: double.infinity,
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
               //   borderRadius: BorderRadius.circular(XPadding*2),
                //  border: Border.all(color: Colors.black26),
                  image:  DecorationImage(
                      image: AssetImage("assets/images/onboarding/11.png"),
                      fit: BoxFit.cover,
                    alignment: Alignment.center
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    child: IconButton(
                        onPressed: () {},
                        icon:  Icon(
                          Icons.copy_sharp,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
          ),
           SizedBox(
            height: XPadding,
          ),
          Padding(
            padding:   EdgeInsets.all(XPadding),
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
                  icon:  Icon(
                    Icons.comment,
                  ),
                ),
                XTextHorizontalButton(
                  title: 'Share',
                  icon:  Icon(
                    Icons.share,
                  ),
                ),
              ],
            ),
          ),

           Padding(
             padding:   EdgeInsets.all(XPadding),
             child: Text("Liked by you and 500 others persons"),
           ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextButton(onPressed: (){}, child: Text("# Time")),
            TextButton(onPressed: (){}, child: Text("# Time")),
            TextButton(onPressed: (){}, child: Text("# Time")),

            ],
          ),
           Padding(
             padding:   EdgeInsets.only(left: XPadding, right: XPadding, bottom: XPadding),
             child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget ultrices nulla. Duis enim nisi, maximus eget sodales nec, rhoncus ut mi. Nulla aliquet scelerisque augue, vel malesuada lorem ultricies eget.'),
           )
        ],
      ),
    );
  }
}
