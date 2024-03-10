import 'package:coba/ui/widgets/buttons.dart';
import 'package:coba/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit PIN'),),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
                    const SizedBox(
            height: 30,
          ),
          const CustomFormField(
            title: 'Old PIN',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomFormField(
            title: 'New PIN',
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