import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/screens/chat/chat_item_screen.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(


        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontWeight: FontWeight.bold ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(15)),
              child: const Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Text('Search "Your Friend"')),
                  Icon(
                    Icons.mic,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) => ListTile(
                  leading: Stack(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/onboarding/5.png"),
                        radius: 25,
                      ),
                      Positioned(
                        bottom: 0,
                        right: -2,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ChatItemScreen(),));
                  },
                  onLongPress: () {},
                  title: const Text("John Smith"),
                  subtitle: const Text("hi, how are you doing"),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("11:11"),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle),
                        child: const Center(
                            child: Text(
                          "10",
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
