// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hotline_cafe/Pages/LogIn/phoneNumber.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF040415),
      body: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            Image.asset("assets/images/LogIn/logInGradient.png"),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/images/LogIn/App Icon.png",
                  scale: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Hotline Cafe",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ]),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                MaterialButton(
                  height: 55,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  color: const Color(0xff1d1d2c),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/LogIn/google.png",
                          scale: 3,
                        ),
                      ),
                      const Text("Continue with Google"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  height: 55,
                  minWidth: double.infinity,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  color: const Color(0xff1d1d2c),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/LogIn/apple.png",
                          scale: 3,
                        ),
                      ),
                      const Text("Continue with Apple"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  height: 55,
                  minWidth: double.infinity,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhoneNumber()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  color: const Color(0xffe66944),
                  child: const Text("Phone"),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
                "By signing up, you agree to the Terms & conditions and Privacy policy.",
                style: TextStyle(fontWeight: FontWeight.w200),),
          )
        ],
      ),
    );
  }
}
