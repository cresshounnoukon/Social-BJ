import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/screens/call/call_screen.dart';

class ChatItemScreen extends StatefulWidget {
  const ChatItemScreen({super.key});

  @override
  State<ChatItemScreen> createState() => _ChatItemScreenState();
}

class _ChatItemScreenState extends State<ChatItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 30,

        title: Row(

          children: [

            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Theme
                      .of(context)
                      .primaryColor,
                  border: Border.all(color: Colors.white, width: 3),
                  shape: BoxShape.circle),
              child: const CircleAvatar(
                backgroundImage:
                AssetImage("assets/images/onboarding/5.png"),
              ),
            ),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(
                  width: 200,
                  child: Text("Djomion Roxane Hephsiba HOUNNOUKON",
                      overflow: TextOverflow.ellipsis,

                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium),
                ),

                Text("Software Engenieer",
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodySmall)
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CallScreen(),));
          }, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {


          },

          itemCount: 25,
        ),
      ),
      bottomSheet: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              IconButton(onPressed: () {

              }, icon: Icon(Icons.add)), IconButton(onPressed: () {

              }, icon: Icon(Icons.attach_file)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      minLines: 2,
                      maxLines: 5,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: 10)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                child: Container(
                  child: Center(
                    child: Icon(
                      Icons.send,
                      color: Theme
                          .of(context)
                          .primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
