import 'package:clinica/pages/login.dart';
import 'package:clinica/pages/patient_homepage.dart.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LogInPage(),
                        ));
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.only(left: 40, right: 40, bottom: 60, top: 30),
        width: double.infinity,
        height: double.infinity,
        child: Align(
            //alignment: Alignment.topCenter,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
                width: 250,
                child: Text(
                  'Clinica',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 34, 203, 170)),
                  textAlign: TextAlign.center,
                )),
            const Padding(
              padding: EdgeInsets.only(top: 45, bottom: 15),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
                width: 400,
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                )),
            Container(
                width: 400,
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'New Password',
                    ),
                  ),
                )),
            Container(
                width: 400,
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Confirm Password'),
                  ),
                )),
            Container(
                width: 400,
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Phone Number'),
                  ),
                )),
            Container(
                width: 400,
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Gender'),
                  ),
                )),
            Container(
                width: 400,
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Date Of Birth'),
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PatientHomePage(),
                    ));
              },
              child: Container(
                width: 400,
                height: 50,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 70, 254, 218),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Center(
                  child: Text('SignUp'),
                ),
              ),
            ),
          ],
        )),
      )),
    );
  }
}
