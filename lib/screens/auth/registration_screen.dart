import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../components/input_component.dart';
import '../../components/section_title.dart';
import '../../components/x_button_component.dart';
import '../../style/default_values.dart';
import '../main_screen.dart';
import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  late AppLocalizations _local;

  @override
  void didChangeDependencies() {
    _local = AppLocalizations.of(context)!;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(
            _local.hello ?? '',
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(XPadding * 2),
              child: Column(
                children: [
                  SectionTitle(
                    title: "🇧🇯 Social BJ \nWelcome And Let's Connect",
                    description:
                        'Create an account and keep more keep more amazing beninese culture around the world.',
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
                            icon: Icons.email_outlined,
                            placeHolder: 'Email',
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: XPadding,
                          ),
                          InputComponent(
                              onSaved: (String? data) {},
                              icon: Icons.lock_outline,
                              placeHolder: 'Mot de passe',
                              obscureText: true,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_red_eye),
                              )),
                          SizedBox(
                            height: XPadding,
                          ),
                          InputComponent(
                              onSaved: (String? data) {},
                              icon: Icons.lock_outline,
                              placeHolder: 'Confirmer Mot de passe',
                              obscureText: true,
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_red_eye),
                              )),
                          SizedBox(
                            height: XPadding * 2,
                          ),
                          XButton(
                            title: "Create an account",
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainScreen()),
                                  (route) => false);
                            },
                          ),
                        ],
                      )),
                  SizedBox(
                    height: XPadding,
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
                                  builder: (context) => LoginScreen()),
                              (route) => false);
                        },
                        child: Text("Sign In"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: XPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Divider(

                      ),
                      Text("OR"),
                      Divider(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      TextButton.icon(
                        onPressed: () {},
                        label: Text("Phone"),
                        icon: Icon(Icons.phone_android),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text("Facebook"),
                        icon: Icon(Icons.facebook),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text("Apple"),
                        icon: Icon(Icons.apple),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: XPadding,
                  ),
                  Text("By clicking continue, you consent to use of your information",
                  style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
