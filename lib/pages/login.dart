import 'package:clinica/pages/patient_homepage.dart.dart';
import 'package:clinica/pages/signup.dart.dart';
import 'package:clinica/pages/user_auth_page.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

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
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserAuthPage(),
                      ));
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Container(
          margin:
              const EdgeInsets.only(left: 40, right: 40, bottom: 50, top: 50),
          width: double.infinity,
          height: 570,
          child: Align(
              //alignment: Alignment.topCenter,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                    width: 250,
                    height: 185,
                    child: Image.asset(
                      'assets/images/clinica_logo.png',
                      fit: BoxFit.cover,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 45, bottom: 15),
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  width: 400,
                  height: 60,
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
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 227, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PatientHomePage(),
                      ));
                },
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 70, 254, 218),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: const Center(
                    child: Text('LogIn'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 47),
                child: Row(
                  children: [
                    const Text('Do not have an account? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ));
                      },
                      child: const Text(
                        "Sing up",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        )),
      ),
    );
  }
}
