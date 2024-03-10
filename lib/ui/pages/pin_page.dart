import 'package:coba/shared/theme.dart';
import 'package:coba/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController();

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
    
    if(pinController.text == "123123") {
      Navigator.pop(context, true);
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
    //print(pinController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha Pin',
                style:
                    whiteTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: greyColor,
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                      fontSize: 36, fontWeight: medium, letterSpacing: 16),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor)),
                  ),
                ),
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
                        addPin('1');
                      }),
                  CustomInputBotton(
                      title: '2',
                      onTap: () {
                        addPin('2');
                      }),
                  CustomInputBotton(
                      title: '3',
                      onTap: () {
                        addPin('3');
                      }),
                  CustomInputBotton(
                      title: '4',
                      onTap: () {
                        addPin('4');
                      }),
                  CustomInputBotton(
                      title: '5',
                      onTap: () {
                        addPin('5');
                      }),
                  CustomInputBotton(
                      title: '6',
                      onTap: () {
                        addPin('6');
                      }),
                  CustomInputBotton(
                      title: '7',
                      onTap: () {
                        addPin('7');
                      }),
                  CustomInputBotton(
                      title: '8',
                      onTap: () {
                        addPin('8');
                      }),
                  CustomInputBotton(
                      title: '9',
                      onTap: () {
                        addPin('9');
                      }),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputBotton(
                      title: '0',
                      onTap: () {
                        addPin('0');
                      }),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
                    child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: numberBackgroundColor),
                        child: Center(
                            child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ))), //defult ukuran icon 24
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
