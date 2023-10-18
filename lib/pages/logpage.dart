import 'package:clinica/pages/medical_record_page.dart';
import 'package:clinica/pages/medical_record_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:provider/provider.dart';

class LogPage extends StatefulWidget {
  const LogPage({super.key});

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(
      builder: (context, value1, child) => SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Container(
          margin: const EdgeInsets.only(left: 40, right: 40, bottom: 50),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.75,
          child: Align(
              //alignment: Alignment.topCenter,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Clinica',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 34, 203, 170)),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2026))
                                .then((value) {
                              final selectDate = context.read<PickedDate>();
                              selectDate.selectedDate(value!);
                            });
                          },
                          icon: const Icon(Icons.date_range)),
                      Text(
                        DateFormat.yMd().format(value1.date),
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.568,
                child: ListView.separated(
                    itemBuilder: (context, index) => index == 1 || index == 5
                        ? const MedicalRecordLogItemView(
                            image: 'assets/images/ssc.jpg',
                            hospitalName: "SSC Hospital")
                        : index == 2 || index == 7
                            ? const MedicalRecordLogItemView(
                                image: 'assets/images/aryu.jpg',
                                hospitalName: "Aryu Hospital")
                            : index == 3 || index == 5
                                ? const MedicalRecordLogItemView(
                                    image: 'assets/images/aung.jpg',
                                    hospitalName: "Aung Yadanar")
                                : index == 4 || index == 6
                                    ? const MedicalRecordLogItemView(
                                        image: 'assets/images/pinlon.jpg',
                                        hospitalName: "PinLon Hospital")
                                    : const SizedBox(),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 15,
                        ),
                    itemCount: 7),
              )
            ],
          )),
        )),
      ),
    );
  }
}

class MedicalRecordLogItemView extends StatelessWidget {
  const MedicalRecordLogItemView(
      {super.key, required this.image, required this.hospitalName});

  final String image;
  final String hospitalName;

  @override
  Widget build(BuildContext context) {
    return Consumer<PickedDate>(
      builder: (context, value, child) => GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MedicalRecordPage(),
            )),
        child: Container(
          height: 110,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 233, 230, 230),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(96, 56, 56, 56),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 2.5),
              )
            ],
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  width: 115,
                  height: 95,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    value.name = hospitalName,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ])),
        ),
      ),
    );
  }
}
