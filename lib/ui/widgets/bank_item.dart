import 'package:coba/shared/theme.dart';
import 'package:flutter/material.dart';

class BankItem extends StatefulWidget {
  final String imgUrl;
  final String title;
  final bool isSelected;
  //final ValueChanged<bool>? onSelect;
  const BankItem({super.key, required this.imgUrl, required this.title, this.isSelected = false});

  @override
  State<BankItem> createState() => _BankItemState();
}

class _BankItemState extends State<BankItem> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.isSelected;
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
       // widget.onSelect?.call(_isSelected);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 18),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: _isSelected ? blueColor : whiteColor),
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(widget.imgUrl, height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Text(widget.title, style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),),
              const SizedBox(height: 2,),
              Text('50 min', style: greyTextStyle.copyWith(fontSize: 12))
      
            ],)
          ],
        ),
      ),
    );
  }
}