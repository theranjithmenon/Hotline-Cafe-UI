// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hotline_cafe/Pages/LogIn/otpPage.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF040415),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let’s get started!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Welcome to Hotline Cafe.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              textInputAction: TextInputAction.next,
              cursorColor: const Color(0xffe66944),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffe66944),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "Select Country",
                  prefixIcon: const Icon(
                    Icons.location_on,
                  ),
                  suffixIcon: const Icon(
                    Icons.keyboard_arrow_down,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              textInputAction: TextInputAction.done,
              cursorColor: const Color(0xffe66944),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffe66944),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  hintText: "XXX - XXX - XX - XX",
                  prefixIcon: const Icon(
                    Icons.phone,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const OTPpage()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: const Color(0xffe66944),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Next"),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
