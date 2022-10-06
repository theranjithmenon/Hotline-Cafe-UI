import 'package:flutter/material.dart';
import 'package:hotline_cafe/Pages/LogIn/dob.dart';

class GenderSelection extends StatelessWidget {
  const GenderSelection({super.key});

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
              "Gender selection",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40,),
            MaterialButton(
              height: 65,
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
                      "assets/images/LogIn/male.png",
                      scale: 3,
                    ),
                  ),
                  const Text("Male"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 65,
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
                      "assets/images/LogIn/female.png",
                      scale: 3,
                    ),
                  ),
                  const Text("Female"),
                ],
              ),
            ),
            const Spacer(),
            MaterialButton(
              height: 55,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DateOfBirth()));
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
                  "Gender can’t be change once submited",
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
