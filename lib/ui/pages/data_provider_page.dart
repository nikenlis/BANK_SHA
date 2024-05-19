import 'package:coba/shared/share_method.dart';
import 'package:coba/shared/theme.dart';
import 'package:coba/ui/widgets/buttons.dart';
import 'package:coba/ui/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beli Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance: ${formatCurrency(180000)}',
                    style: greyTextStyle.copyWith(
                        fontSize: 12, fontWeight: regular),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const DataProviderItem(
            imageUrl: 'assets/img_provider_telkomsel.png',
            name: 'Telkomsel',
            isSelected: true,
          ),
          const DataProviderItem(
              imageUrl: 'assets/img_provider_indosat.png',
              name: 'Indosat Oredo'),
          const DataProviderItem(
              imageUrl: 'assets/img_provider_singtel.png', name: 'Singtel Id'),
          const SizedBox(
            height: 135,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/data-package');
            },
          ), 
          const SizedBox(height: 57,)
        ],
      ),
    );
  }
}
