import 'package:coba/shared/share_method.dart';
import 'package:coba/shared/theme.dart';
import 'package:coba/ui/widgets/home_latest_transaction_item.dart';
import 'package:coba/ui/widgets/home_service_item.dart';
import 'package:coba/ui/widgets/home_tips_item.dart';
import 'package:coba/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: whiteColor,
            selectedItemColor:
                blueColor, // Warna ikon dan teks untuk item yang terpilih
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            unselectedLabelStyle:
                blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ic_overview.png',
                    width: 20,
                    color: blueColor,
                  ),
                  label: 'Overview'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ic_history.png',
                    width: 20,
                  ),
                  label: 'History'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ic_statistic.png',
                    width: 20,
                  ),
                  label: 'Statistic'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ic_reward.png',
                    width: 20,
                  ),
                  label: 'Reward')
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(context),
          buildLatestTransaction(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/profile');
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 40,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  'Niken Lismiati',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                )
              ],
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/img_profile.png')),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/img_bg_card.png'))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Niken Lismiati',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 6),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle,
          ),
          Text(
            formatCurrency(12500),
            style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          )
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: whiteColor),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level',
                style: blackTextStyle.copyWith(fontWeight: medium),
              ),
              const Spacer(),
              Text(
                '55%',
                style: greenTextStyle.copyWith(fontWeight: semiBold),
              ),
              Text(
                ' of ${formatCurrency(20000)}',
                style: blackTextStyle.copyWith(fontWeight: semiBold),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          LinearProgressIndicator(
            value: 0.55,
            valueColor: AlwaysStoppedAnimation(greenColor),
            backgroundColor: lightBackgroundColor,
            borderRadius: BorderRadius.circular(55),
            minHeight: 5,
          )
        ],
      ),
    );
  }

  Widget buildServices(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: 'assets/ic_topup.png',
                title: 'Top Up',
                onTap: () {
                  Navigator.pushNamed(context, '/topup');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onTap: () {
                  Navigator.pushNamed(context, '/transfer');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'Withdraw',
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => const MoreDiaglog());
                },
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildLatestTransaction() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          Container(
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: whiteColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat1.png',
                    title: 'Top Up',
                    time: 'Yesterday',
                    value: '+ ${formatCurrency(450000, symbol: '')}'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat2.png',
                    title: 'Cashback',
                    time: 'Sep 11',
                    value: '+ ${formatCurrency(22000, symbol: '')}'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat3.png',
                    title: 'WithDraw',
                    time: 'Sep 2',
                    value: '- ${formatCurrency(5000, symbol: '')}'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat4.png',
                    title: 'Transfer',
                    time: 'August 27',
                    value: '- ${formatCurrency(12500, symbol: '')}'),
                HomeLatestTransactionItem(
                    iconUrl: 'assets/ic_transaction_cat5.png',
                    title: 'Electric',
                    time: 'Feb 18',
                    value: '- ${formatCurrency(12300000, symbol: '')}'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                  imageUrl: 'assets/img_friend1.png',
                  username: 'yuanita',
                ),
                HomeUserItem(
                  imageUrl: 'assets/img_friend2.png',
                  username: 'yusuf',
                ),
                HomeUserItem(
                  imageUrl: 'assets/img_friend3.png',
                  username: 'ayuk',
                ),
                HomeUserItem(
                  imageUrl: 'assets/img_friend4.png',
                  username: 'alex',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 18,
            children: [
              HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: 'Best tips for using a credit card',
                  url: Uri.parse('https://flutter.dev')),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips2.png',
                  title: 'Sopt the good pie of finance model',
                  url: Uri.parse(
                      'https://tv12.nontondrama.click/game-of-thrones-season-5-episode-5-2011/')),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips3.png',
                  title: 'Great hack to get better advice',
                  url: Uri.parse('https://pub.dev/packages/url_launcher')),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips4.png',
                  title: 'Save more penny buy this instead',
                  url: Uri.parse('https://www.youtube.com/')),
            ],
          )
        ]));
  }
}

class MoreDiaglog extends StatelessWidget {
  const MoreDiaglog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      content: Container(
        padding: const EdgeInsets.all(30),
        height: 326,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: lightBackgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Do More With Us',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(height: 13,),
            Wrap(
              spacing: 29,
              runSpacing: 29,
              children: [
                HomeServiceItem(
                iconUrl: 'assets/ic_product_data.png',
                title: 'Data',
                onTap: () {
                  Navigator.pushNamed(context, '/data-provider');
                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_product_water.png',
                title: 'Water',
                onTap: () {

                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_product_stream.png',
                title: 'Stream',
                onTap: () {

                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_product_movie.png',
                title: 'Movie',
                onTap: () {

                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_product_food.png',
                title: 'Food',
                onTap: () {

                },
              ),
              HomeServiceItem(
                iconUrl: 'assets/ic_product_travel.png',
                title: 'Travel',
                onTap: () {

                },
              ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
