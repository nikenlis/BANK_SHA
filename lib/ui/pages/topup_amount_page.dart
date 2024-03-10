import 'package:coba/shared/theme.dart';
import 'package:coba/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';


class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({super.key});

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  final TextEditingController amountController = TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;
      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(int.parse(text.replaceAll('.', '')),
        )
      );
    });
  }

  addAmount(String number) {
    if(amountController.text == '0'){
      amountController.text ='';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if(amountController.text == '') {
            amountController.text ='0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
                width: 200,
                child: TextFormField(
              controller: amountController,
              cursorColor: greyColor,
              enabled: false,
              style: whiteTextStyle.copyWith(fontSize: 36, fontWeight: medium),
              decoration: InputDecoration(
                prefixIcon: Text(
                  'Rp ',
                  style:
                      whiteTextStyle.copyWith(fontSize: 36, fontWeight: medium),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: greyColor,
                  ),
                ),
              ),
            )),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            //biar dia misal ga muat bisa otomatis tarus di bawahnya/ selanjutanya
            spacing: 40,
            runSpacing: 40,
            children: [
              CustomInputBotton(
                  title: '1',
                  onTap: () {
                    addAmount('1');
                  }),
              CustomInputBotton(
                  title: '2',
                  onTap: () {
                    addAmount('2');
                  }),
              CustomInputBotton(
                  title: '3',
                  onTap: () {
                    addAmount('3');
                  }),
              CustomInputBotton(
                  title: '4',
                  onTap: () {
                    addAmount('4');
                  }),
              CustomInputBotton(
                  title: '5',
                  onTap: () {
                    addAmount('5');
                  }),
              CustomInputBotton(
                  title: '6',
                  onTap: () {
                    addAmount('6');
                  }),
              CustomInputBotton(
                  title: '7',
                  onTap: () {
                    addAmount('7');
                  }),
              CustomInputBotton(
                  title: '8',
                  onTap: () {
                    addAmount('8');
                  }),
              CustomInputBotton(
                  title: '9',
                  onTap: () {
                    addAmount('9');
                  }),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CustomInputBotton(
                  title: '0',
                  onTap: () {
                    addAmount('0');
                  }),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: numberBackgroundColor),
                    child: Center(
                        child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ))), //defult ukuran icon 24
              ),
            ],
          ),
        const SizedBox(height: 50,),
        CustomFilledButton(title: 'Checkout Now', onPressed: () async {
          if(await Navigator.pushNamed(context, '/pin') == true) {
            await launchUrl(Uri.parse('https://demo.midtrans.com/'));
            Navigator.pushNamedAndRemoveUntil(context, '/topup-success', (route) => false);
          }
        },),
        const SizedBox(height: 25,),
        CustomTextButton(title: 'Terms & Conditions', onPressed: () {
          
        },),
        const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
