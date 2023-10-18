import 'package:clinica/pages/logpage.dart';

import 'package:clinica/pages/medical_record_model.dart';
import 'package:clinica/pages/patient_profile.dart';
import 'package:clinica/pages/setting_page.dart';

import 'package:clinica/pages/user_auth_page.dart';
import 'package:clinica/widgets/bottom_navi_bar.dart';
import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:provider/provider.dart';

class PatientHomePage extends StatefulWidget {
  const PatientHomePage({super.key});

  @override
  State<PatientHomePage> createState() => _PatientHomePageState();
}

class _PatientHomePageState extends State<PatientHomePage> {
  List<Widget> pages = const [LogPage()];
  final List<String> _suggestions = [
    'Afeganistan',
    'Albania',
    'Algeria',
    'Australia',
    'Brazil',
    'German',
    'Madagascar',
    'Mozambique',
    'Portugal',
    'Zambia'
  ];

  int selectedIndex = 0;
  navigateBottomBar(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 70, 254, 218)),
            child: Text(
              'Clinica',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
              title: const Text(
                'Profile',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PatientProfilePage(),
                    ));
              }),
          ListTile(
              title: const Text(
                'Setting',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingPage(),
                    ));
              }),
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pop(context, const PatientHomePage());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserAuthPage(),
                      ));
                }),
          )
        ])),
        appBar: EasySearchBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(''),
            onSearch: (value) => (),
            suggestions: _suggestions),
        bottomNavigationBar: BottomNav((index) {
          navigateBottomBar(index);
        }),
        body: pages[selectedIndex],
      ),
    );
  }
}
