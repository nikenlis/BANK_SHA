import 'package:coba/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  final int amount;
  final int price;
  final bool isSelected;
  const PackageItem({super.key,
  required this.price,
      required this.amount,
      this.isSelected = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 173,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text('${amount}GB', style: blackTextStyle.copyWith(fontSize: 32, fontWeight: medium),),
            const SizedBox(height: 2,),
            Text('Rp $price', style: greyTextStyle.copyWith(fontSize: 12),),
        ],
      ),
    );
  }
}