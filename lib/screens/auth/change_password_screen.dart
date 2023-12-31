import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/input_component.dart';
import 'package:flutterwithfirebase/components/section_title.dart';
import 'package:flutterwithfirebase/components/x_button_component.dart';

import '../../style/default_values.dart';

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
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Forgot Password",
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(XPadding * 2),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(
                    title: "Create New\nPassword",
                    description:
                        'Your new password must be different from previous used passwords',
                  ),
                  SizedBox(
                    height: XPadding * 2,
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
                          SizedBox(
                            height: XPadding * 2,
                          ),
                          InputComponent(
                            onSaved: (String? data) {},
                            icon: Icons.lock_outline,
                            placeHolder: 'Confirm Password',
                            obscureText: true,
                          ),
                          SizedBox(
                            height: XPadding * 2,
                          ),
                          XButton(title: "Send Instructions"),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
