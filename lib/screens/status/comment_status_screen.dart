import 'package:flutter/material.dart';

class CommentStatusScreen extends StatefulWidget {

  const CommentStatusScreen({super.key});

  @override
  State<CommentStatusScreen> createState() => _CommentStatusScreenState();
}

class _CommentStatusScreenState extends State<CommentStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/onboarding/5.png"),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    minLines: 2,
                    maxLines: 5,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              child: Container(
                child: Center(
                  child: Icon(
                    Icons.send,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
