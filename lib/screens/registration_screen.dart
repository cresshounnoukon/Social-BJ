import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/components/bj_button_component.dart';
import 'package:flutterwithfirebase/components/input_component.dart';
import 'package:flutterwithfirebase/components/section_title.dart';
import 'package:flutterwithfirebase/screens/home_screen.dart';
import 'package:flutterwithfirebase/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Create Account",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          bottom: false,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
            child: ListView(

                children: [
                  SectionTitle(
                    title: 'Welcome',
                    description:
                        'Create an account and keep more keep more amazing beninese culture around the world.',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          InputComponent(
                            onSaved: (String? data) {},
                            icon: Icons.person_2_outlined,
                            placeHolder: 'Full name',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
                            height: 10,
                          ),
                          InputComponent(
                            onSaved: (String? data) {},
                            icon: Icons.lock_outline,
                            placeHolder: 'Confirmer Mot de passe',
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 10 * 2,
                          ),
                          BjButtonComponent(title: "Create an account",onTap: (){
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                                    (route) => false);

                          },),
                        ],
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                                  (route) => false);
                        },
                        child: Text("Sign In"),
                      ),
                    ],
                  ),
                ],

            ),
          ),
        ));
  }
}
