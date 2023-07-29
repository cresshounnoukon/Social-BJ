import 'package:flutter/material.dart';


import '../../components/x_button_component.dart';
import '../../components/input_component.dart';
import '../../components/section_title.dart';
import '../../style/default_values.dart';
import 'change_password_screen.dart';
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
              child:   Column(
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
                          XButton(
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
            ),
          ),
        ));
  }
}
