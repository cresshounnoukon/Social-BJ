import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterwithfirebase/screens/auth/registration_screen.dart';
import 'package:flutterwithfirebase/screens/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';
import 'screens/home/home_screen.dart';
import 'screens/on_boarding_screen.dart';
import 'utils/color_schemes.g.dart';
import 'utils/default_values.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return MaterialApp(
      title: 'Media BJ',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          textTheme: GoogleFonts.poppinsTextTheme(theme.textTheme).copyWith(
              headlineLarge: GoogleFonts.poppins(
                  textStyle: theme.textTheme.headlineMedium!
                      .copyWith(color: Colors.black))),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(XPadding * 2)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(XPadding * 2)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(


                ),
                borderRadius: BorderRadius.circular(XPadding * 2)),
          )
      ),
      darkTheme: ThemeData(
          useMaterial3: true,

          textTheme: GoogleFonts.poppinsTextTheme(theme.textTheme).copyWith(
              headlineLarge: GoogleFonts.poppins(
                  textStyle: theme.textTheme.headlineMedium!
                      .copyWith(color: Colors.white))),

          colorScheme: darkColorScheme,

          inputDecorationTheme: InputDecorationTheme(
            filled: false,
            border: OutlineInputBorder(
               borderSide: BorderSide(
                   //color: darkColorScheme.primary
               ),
                borderRadius: BorderRadius.circular(XPadding * 2)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: darkColorScheme.primary
                ),
                borderRadius: BorderRadius.circular(XPadding * 2)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: darkColorScheme.primary
                ),
                borderRadius: BorderRadius.circular(XPadding * 2)),
          )
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return MainScreen();
            }
            if (snapshot.hasError) {
              debugPrint(snapshot.error as String?);
            }
          }
          return OnBoardingScreen();
        },
      ),
    );
  }
}
