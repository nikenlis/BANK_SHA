import 'package:coba/shared/theme.dart';
import 'package:coba/ui/widgets/buttons.dart';
import 'package:coba/ui/widgets/forms.dart';
import 'package:coba/ui/widgets/package_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Beli Data'),),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(height: 30,),
          Text('Phone Number', style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
          const SizedBox(height: 14,),
          CustomFormField(title: '+628', isShowTitle: false,),
          const SizedBox(height: 40,),
          Text('Select Package', style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              PackageItem(price: 100000 , amount: 10),
              PackageItem(price: 200000 , amount: 25, isSelected: true,),
              PackageItem(price: 400000 , amount: 40),
              PackageItem(price: 1000000 , amount: 99),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if( await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(context, '/data-success', (route) => false);
              }  
            },
          ), 
          const SizedBox(height: 57,)
        ],
      ),
    );
  }
}