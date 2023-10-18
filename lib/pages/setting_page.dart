import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Setting",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ],
        ),
        body: const AccountSettingView(),
      ),
    );
  }
}

class AccountSettingView extends StatefulWidget {
  const AccountSettingView({super.key});

  @override
  State<AccountSettingView> createState() => _AccountSettingViewState();
}

class _AccountSettingViewState extends State<AccountSettingView> {
  bool notiFy1 = true;
  bool notiFy2 = false;
  bool notify3 = false;

  onChangeFunction1(bool newValue1) {
    setState(() {
      notiFy1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      notiFy2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue2) {
    setState(() {
      notiFy2 = newValue2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.greenAccent,
              ),
              SizedBox(width: 10),
              Text(
                "Account Setting",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          buildAccountOption(context, 'Change Email'),
          buildAccountOption(context, 'Change Password'),
          buildAccountOption(context, 'Two Factor Authentication'),
          buildAccountOption(context, 'Account Delete'),
          const SizedBox(
            height: 40,
          ),
          const Row(
            children: [
              Icon(
                Icons.notifications,
                color: Colors.greenAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Notifications',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 2,
          ),
          buildNotificationOption(
              'Notification On and Off', notiFy1, onChangeFunction1),
          const Row(
            children: [
              Icon(
                Icons.dark_mode,
                color: Colors.greenAccent,
              ),
              SizedBox(width: 10),
              Text(
                "Dark Mode",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 2,
          ),
          buildNotificationOption(
              'Dark Mode On and Off', notiFy2, onChangeFunction2),
          const Row(
            children: [
              Icon(
                Icons.text_snippet,
                color: Colors.greenAccent,
              ),
              SizedBox(width: 10),
              Text(
                "Term and Condidions",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 2,
          ),
          buildAccountOption(context, 'See More'),
        ],
      ),
    );
  }

  Padding buildNotificationOption(
      String title, bool value, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.grey[600],
            ),
          ),
          Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              activeColor: Colors.greenAccent,
              trackColor: Colors.grey,
              value: value,
              onChanged: (bool newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        print("Hello World");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
