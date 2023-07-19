import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/bj_button_component.dart';
import 'package:flutterwithfirebase/components/input_component.dart';
import 'package:flutterwithfirebase/components/section_title.dart';
import 'package:flutterwithfirebase/screens/reset_password_screen.dart';

import 'registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Sign In",
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
                const SectionTitle(
                  title: 'Welcome back!',
                  description: 'Please Sign to continue',
                ),
                const SizedBox(
                  height: 10,
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
                          height: 10,
                        ),
                        InputComponent(
                          onSaved: (String? data) {},
                          icon: Icons.lock_outline,
                          placeHolder: 'Mot de passe',
                          obscureText: true,

                        ),
                        const SizedBox(
                          height: 10 ,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const ResetPasswordScreen()),
                                          (route) => false);
                                },
                                child: const Text("Password forget"))
                          ],
                        ),
                        const SizedBox(
                          height: 10 ,
                        ),
                        BjButtonComponent(title: "Sign in"),
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RegistrationScreen()),
                            (route) => false);
                      },
                      child: const Text("Create an account"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
