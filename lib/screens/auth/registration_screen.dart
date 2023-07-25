import 'package:flutter/material.dart';
import 'package:flutterwithfirebase/utils/default_values.dart';

import '../../components/input_component.dart';
import '../../components/section_title.dart';
import '../../components/x_button_component.dart';
import '../main_screen.dart';
import 'login_screen.dart';

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

       appBar: AppBar(

          title: const Text(
            "Create Account",

          ),

        ),
        body: SafeArea(

          child:   SingleChildScrollView(
              child: Padding(
                padding:   EdgeInsets.all(XPadding*2),
                child: Column(

                    children: [
                      const SectionTitle(
                        title: "🇧🇯 Social BJ \nWelcome And Let's Connect",
                        description:
                            'Create an account and keep more keep more amazing beninese culture around the world.',
                      ),
                      const SizedBox(
                        height: 10*2,
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
                                  suffixIcon:IconButton(
                                    onPressed: () {

                                    },
                                    icon: Icon(Icons.remove_red_eye),
                                  )

                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              InputComponent(
                                onSaved: (String? data) {},
                                icon: Icons.lock_outline,
                                placeHolder: 'Confirmer Mot de passe',
                                obscureText: true,
                                  suffixIcon:IconButton(
                                    onPressed: () {

                                    },
                                    icon: Icon(Icons.remove_red_eye),
                                  )
                              ),
                              const SizedBox(
                                height: 10 * 2,
                              ),
                              XButton(title: "Create an account",onTap: (){
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const MainScreen()),
                                        (route) => false);

                              },),
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>   LoginScreen()),
                                      (route) => false);
                            },
                            child: const Text("Sign In"),
                          ),
                        ],
                      ),
                    ],

                ),
              ),
            ),

        ));
  }
}
