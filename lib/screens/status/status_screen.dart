import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/screens/chat/chat_item_screen.dart';
import 'package:flutterwithfirebase/screens/status/comment_status_screen.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/onboarding/4.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(height: 4, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(height: 4, color: Colors.white),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(height: 4, color: Colors.white),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatItemScreen(),
                      ));
                },
                leading: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      border: Border.all(color: Colors.white, width: 3),
                      shape: BoxShape.circle),
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/onboarding/5.png"),
                  ),
                ),
                title: Text("Georges Cress HOUNNOUKON",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                subtitle: Text(
                  "Software Engenieer",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
              ),
              const Spacer(),
              Container(
                height: 200,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text("Sport",
                          style: Theme.of(context).textTheme.labelMedium),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Start doing Yogo challeng "
                      "twice a week Start doing Yogo challeng twice a week",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>CommentStatusScreen(),
                                    fullscreenDialog: true));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.remove_red_eye,
                                  size: 15,
                                  color: Colors.black54,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text("900.5M",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share, color: Colors.white)),
                        IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.comment, color: Colors.white)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
