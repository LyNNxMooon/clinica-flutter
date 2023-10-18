import 'package:clinica/pages/login.dart';
import 'package:flutter/material.dart';

class UserAuthPage extends StatelessWidget {
  const UserAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        width: double.infinity,
        height: 550,
        child: Align(
            //alignment: Alignment.topCenter,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 250,
                height: 185,
                child: Image.asset(
                  'assets/images/clinica_logo.png',
                  fit: BoxFit.cover,
                )),
            const Padding(
              padding: EdgeInsets.only(top: 60, bottom: 15),
              child: Text(
                'Which User?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogInPage(),
                    ));
              },
              child: Container(
                width: 400,
                height: 50,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 70, 254, 218),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Center(
                  child: Text('Patient'),
                ),
              ),
            ),
            Container(
              width: 400,
              height: 50,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 70, 254, 218),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: const Center(
                child: Text('Doctor'),
              ),
            ),
            Container(
              width: 400,
              height: 50,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 70, 254, 218),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: const Center(
                child: Text('Hospital'),
              ),
            )
          ],
        )),
      )),
    );
  }
}
