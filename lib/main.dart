
import 'package:coba/shared/theme.dart';
import 'package:coba/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:coba/ui/pages/home_page.dart';
import 'package:coba/ui/pages/onboarding_page.dart';
import 'package:coba/ui/pages/sign_in_page.dart';
import 'package:coba/ui/pages/sign_up_page.dart';
import 'package:coba/ui/pages/sign_up_set_ktp_page.dart';
import 'package:coba/ui/pages/sign_up_set_profile_page.dart';
import 'package:coba/ui/pages/sign_up_success_page.dart';
import 'package:coba/ui/pages/splash_page.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
        routes: {
          '/': (context) => const SplashPage(),
          '/onboarding': (context) => const OnboardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-set-profile' :(context) => const SignUpSetProfilePage(),
          'sign-up-set-ktp' :(context) => const SignUpSetKtPage(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
          '/profile' :(context) => const ProfilePage()
          
        },
      );
  }
}
