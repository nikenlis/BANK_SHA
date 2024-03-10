import 'package:coba/shared/theme.dart';
import 'package:coba/ui/widgets/buttons.dart';
import 'package:coba/ui/widgets/forms.dart';
import 'package:coba/ui/widgets/transfer_recent_user_item.dart';
import 'package:coba/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          //buildRecentUsers(),
          buildResultUsers(),
          const SizedBox(
            height: 247,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
              imgUrl: 'assets/img_friend1.png',
              name: 'Ayu Fatimah',
              username: 'ayufat',
              isVerified: true),
          const TransferRecentUserItem(
              imgUrl: 'assets/img_friend2.png',
              name: 'Yusuf Andika',
              username: 'yusuf',
              isVerified: false),
          const TransferRecentUserItem(
              imgUrl: 'assets/img_friend3.png',
              name: 'Baharuidin',
              username: 'mbahar',
              isVerified: false),
        ],
      ),
    );
  }

  Widget buildResultUsers() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Result',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              TransferResultUserItem(
                  imgUrl: 'assets/img_friend1.png',
                  name: 'Ayu Fatimah',
                  username: 'ayufat',
                  isVerified: true),
              TransferResultUserItem(
                imgUrl: 'assets/img_friend3.png',
                name: 'Baharudin',
                username: 'mbahar',
                isVerified: true,
                isSelected: true,
              )
            ],
          )
        ],
      ),
    );
  }
}
