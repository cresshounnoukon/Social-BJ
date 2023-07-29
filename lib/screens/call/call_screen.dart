import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/call/call_additional_user.dart';
import 'package:flutterwithfirebase/components/call/in_call_buttons.dart';
import 'package:flutterwithfirebase/components/call/out_going_call_buttons.dart';

import '../../style/default_values.dart';



class CallScreen extends StatefulWidget {
  CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(XPadding),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                )),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/onboarding/3.png"),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(gradient: XLineaGradient),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Theme
                                        .of(context)
                                        .primaryColor
                                        .withOpacity(.5),
                                    Colors.red.withOpacity(.5),
                                    Colors.white.withOpacity(.5),
                                  ])),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                            AssetImage("assets/images/onboarding/5.png"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Georges Cress\nHOUNNOUKON",
                            style: Theme
                                .of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Ringing",
                          style: Theme
                              .of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: 300,
                child: Center(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: XPadding),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            // shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 2, color: XColorWhite),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/onboarding/5.png"),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
              const InCallButton()
            ],
          ),
        ),
      ),
    );
  }
}
