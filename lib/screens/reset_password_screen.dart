import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/bj_button_component.dart';
import 'package:flutterwithfirebase/components/input_component.dart';
import 'package:flutterwithfirebase/components/section_title.dart';
import 'package:flutterwithfirebase/screens/change_password_screen.dart';

import 'registration_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Forgot Password",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          bottom: false,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SectionTitle(
                      title: "Don't worry, I'll help you",
                      description:
                      'Please enter your email address to reset your password',
                    ),
                    const SizedBox(
                      height: 10 * 2,
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            InputComponent(
                              onSaved: (String? data) {},
                              icon: Icons.email_outlined,
                              placeHolder: 'Email',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(
                              height: 10 * 2,
                            ),
                            BjButtonComponent(
                              title: "Send Instructions",
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>
                                        ChangePasswordScreen()));
                              },
                            ),
                          ],
                        )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
