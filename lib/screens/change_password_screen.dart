import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/bj_button_component.dart';
import 'package:flutterwithfirebase/components/input_component.dart';
import 'package:flutterwithfirebase/components/section_title.dart';

import 'registration_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
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
                      title: "Create New Password",
                      description:
                          'Your new password must be different from previous used passwords',
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
                              icon: Icons.lock_outline,
                              placeHolder: 'Password',
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 10 * 2,
                            ),
                            InputComponent(
                              onSaved: (String? data) {},
                              icon: Icons.lock_outline,
                              placeHolder: 'Confirm Password',
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 10 * 2,
                            ),
                            BjButtonComponent(title: "Send Instructions"),
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
