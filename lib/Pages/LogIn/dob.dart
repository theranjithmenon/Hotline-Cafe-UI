import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotline_cafe/Pages/LogIn/username.dart';

class DateOfBirth extends StatelessWidget {
  const DateOfBirth({super.key});

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
              "Date of Birth",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Enter your date of birth as per id",
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
                  hintText: "DD/MM/YYYY",
                  prefixIcon: const Icon(
                    Icons.calendar_month,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            ),
            const Spacer(),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PickUserName()));
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
                  "DOB can’t be change once submited",
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
