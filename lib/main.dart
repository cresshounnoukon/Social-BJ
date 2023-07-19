import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterwithfirebase/screens/home_screen.dart';
import 'package:flutterwithfirebase/screens/registration_screen.dart';
import 'package:flutterwithfirebase/screens/on_boarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BJ Social App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
        inputDecorationTheme:   InputDecorationTheme(
          prefixIconColor: Colors.black54,
          suffixIconColor: Colors.black54,
         filled: false,
          hintStyle: TextStyle(color: Colors.black54 ),
          fillColor:Colors.white60,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide( width: 1,color:Colors.black38,),
            borderRadius: BorderRadius.circular(20.0),
          ),
          border: OutlineInputBorder(

            borderSide: const BorderSide(color:Colors.black54, width: 1),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return HomeScreen();
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
