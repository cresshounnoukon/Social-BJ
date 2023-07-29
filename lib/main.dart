import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



import 'firebase_options.dart';
import 'screens/auth/registration_screen.dart';
import 'screens/main_screen.dart';
import 'screens/on_boarding_screen.dart';
import 'services/shared_preferences.dart';
import 'style/theme.dart';

bool ONBORDING_SKIP = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ONBORDING_SKIP = (await XPreference.isYetEscapeOnBoarding())!;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final XTheme xTheme = XTheme();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Social BJ',
        // Internalization
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: xTheme.light(),
        darkTheme: xTheme.dark(),
        home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return const MainScreen();
              }
              if (snapshot.hasError) {
                debugPrint(snapshot.error as String?);
              }
            }

            return ONBORDING_SKIP == false
                ? const OnBoardingScreen()
                : RegistrationScreen();
          },
        ));
  }
}
