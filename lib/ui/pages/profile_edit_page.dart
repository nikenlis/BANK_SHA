import 'package:coba/ui/widgets/buttons.dart';
import 'package:coba/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomFormField(
            title: 'Username',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomFormField(
            title: 'Full Name',
          ),
          const SizedBox(
            height: 16,
          ),
          // NOTE: EMAIL INPUT
          const CustomFormField(
            title: 'Email Address',
          ),
          const SizedBox(
            height: 16,
          ),
          // NOTE: PASSWORD INPUT
          const CustomFormField(
            title: 'Password',
            obsecureText: true,
            iconVisibility: true,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: 'Update Now',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/profile-edit-success', (route) => false);
            },
          )
        ],
      ),
    );
  }
}
