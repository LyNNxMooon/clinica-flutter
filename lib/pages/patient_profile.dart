import 'package:clinica/pages/setting_page.dart';

import 'package:flutter/material.dart';

class PatientProfilePage extends StatelessWidget {
  const PatientProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ));
            },
            child: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
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
              const EdgeInsets.only(left: 40, right: 40, bottom: 50, top: 10),
          width: double.infinity,
          height: 650,
          child: Align(
              //alignment: Alignment.topCenter,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Stack(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 216, 216, 216),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80))),
                      ),
                      const Positioned(
                        left: 47,
                        top: 35,
                        child: Column(
                          children: [
                            Icon(
                              Icons.add,
                              size: 50,
                            ),
                            Text(
                              "Upload",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(80)),
                          // child: Image.asset(
                          //   'assets/images/bitch.jpg',
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      )
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.only(bottom: 35),
                child: Text(
                  'Name',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 400,
                height: 170,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Age : 69",
                              style: TextStyle(fontSize: 19),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SettingPage(),
                                  ));
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Icon(Icons.edit),
                            ),
                          )
                        ],
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Email : testing@gmail.com",
                              style: TextStyle(fontSize: 18))),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Phone : 0969696969",
                                style: TextStyle(fontSize: 19))),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 227, 227, 227),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: const Center(
                    child: Text(
                  'Allergic HIstory',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          )),
        )),
      ),
    );
  }
}
