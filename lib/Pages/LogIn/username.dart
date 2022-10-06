import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotline_cafe/Pages/Home/NavBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PickUserName extends StatelessWidget {
  const PickUserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Select Username",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Enter username to continue.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 40,
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
                  hintText: "Enter username",
                  prefixIcon: const Icon(
                    Icons.person,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
            const Spacer(),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('isLoggedIn',true);
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => NavBar()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              color: const Color(0xffe66944),
              child: const Text("Next"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(25),
              child: Center(
                child: Text(
                  "You can change the username later",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
