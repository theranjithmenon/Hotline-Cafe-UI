import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotline_cafe/Pages/LogIn/gender.dart';

class OTPpage extends StatefulWidget {
  const OTPpage({super.key});

  @override
  State<OTPpage> createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  int timeLeft = 120;

  void _startCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    _startCountdown();
    return Scaffold(
      backgroundColor: const Color(0xFF040415),
      appBar: AppBar(backgroundColor: Colors.transparent,),

      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "OTP Verification",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Need to verify OTP sent on your mobile number. We have sent a verification code to +91 987 654 3201",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                otpField(context),
                otpField(context),
                otpField(context),
                otpField(context)
              ],
            ),
            const Spacer(),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GenderSelection()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: const Color(0xffe66944),
              child: const Text("Verify"),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: (timeLeft > 0)
                    ? Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Resend code in ",style: TextStyle(fontWeight: FontWeight.w200)),
                            Text("$timeLeft",style: const TextStyle(fontWeight: FontWeight.w200))
                          ],
                        ),
                      )
                    : Center(
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Resend code",
                              style: TextStyle(
                                color: Color(0xffe66944),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 3
                              ),
                            )),
                      ))
          ],
        ),
      )),
    );
  }

  otpField(context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: TextFormField(
        cursorColor: const Color(0xffe66944),
        onChanged: ((value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        }),
        style: Theme.of(context).textTheme.headline6,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffe66944),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
