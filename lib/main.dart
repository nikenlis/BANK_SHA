
import 'package:coba/blocs/auth/auth_bloc.dart';
import 'package:coba/shared/theme.dart';
import 'package:coba/ui/pages/data_package_page.dart';
import 'package:coba/ui/pages/data_provider_page.dart';
import 'package:coba/ui/pages/data_success_page.dart';
import 'package:coba/ui/pages/pin_page.dart';
import 'package:coba/ui/pages/profile_edit_page.dart';
import 'package:coba/ui/pages/profile_edit_pin_page.dart';
import 'package:coba/ui/pages/profile_edit_success_page.dart';
import 'package:coba/ui/pages/profile_page.dart';
import 'package:coba/ui/pages/topup_amount_page.dart';
import 'package:coba/ui/pages/topup_page.dart';
import 'package:coba/ui/pages/topup_success_page.dart';
import 'package:coba/ui/pages/transfer_amount_page.dart';
import 'package:coba/ui/pages/transfer_page.dart';
import 'package:coba/ui/pages/transfer_success_page.dart';
import 'package:flutter/material.dart';
import 'package:coba/ui/pages/home_page.dart';
import 'package:coba/ui/pages/onboarding_page.dart';
import 'package:coba/ui/pages/sign_in_page.dart';
import 'package:coba/ui/pages/sign_up_page.dart';
import 'package:coba/ui/pages/sign_up_set_ktp_page.dart';
import 'package:coba/ui/pages/sign_up_set_profile_page.dart';
import 'package:coba/ui/pages/sign_up_success_page.dart';
import 'package:coba/ui/pages/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc())
    ],
      child: MaterialApp(
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
            '/profile' :(context) => const ProfilePage(),
            '/pin' :(context) => const PinPage(),
            '/profile-edit':(context) => const ProfileEditPage(),
            '/profile-edit-pin' :(context) => const ProfileEditPinPage(),
            '/profile-edit-success' :(context) => const ProfileEditSuccessPage(),
            '/topup' :(context) => const TopupPage(),
            '/topup-amount' :(context) => const TopupAmountPage(),
            '/topup-success' :(context) => const TopupSuccess(),
            '/transfer' :(context) => const TransferPage(),
            '/transfer-amount' :(context) => const TransferAmountPage(),
            '/transfer-success' :(context) => const TransferSuccessPage(),
            '/data-provider' :(context) => const DataProviderPage(),
            '/data-package' :(context) => const DataPackagePage(),
            '/data-success' :(context) => const DataSuccessPage(),
            
          },
        ),
    );
  }
}
