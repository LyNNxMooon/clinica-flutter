import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
          child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        width: double.infinity,
        height: 590,
        child: Align(
            //alignment: Alignment.topCenter,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                  width: 200,
                  height: 160,
                  child: Image.asset(
                    'assets/images/clinica_logo.png',
                    fit: BoxFit.cover,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Medication Time',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(95, 11, 175, 107),
                          spreadRadius: 2,
                          blurStyle: BlurStyle.solid,
                          blurRadius: 8,
                          offset: Offset(0, 3))
                    ],
                    border: Border.all(color: Colors.black, width: 1.5),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: PageView.builder(
                  itemCount: 3,
                  itemBuilder: (_, index) => index == 0
                      ? const TimeView(
                          date: "2nd Dec, 2023",
                          dosage: "Biogesic 500mg / Citrenze 10mg",
                          time: "9:30AM / 10:00PM")
                      : index == 1
                          ? const TimeView(
                              date: "6th Jan, 2024",
                              dosage: "Decolgen 500mg / Paracetamol 10mg",
                              time: "10:30AM / 11:30PM")
                          : index == 2
                              ? const TimeView(
                                  date: "21st Apr, 2024",
                                  dosage:
                                      "Kyar Man Hone 500mg / Lee Kyee say 10mg",
                                  time: "9:30AM / 10:00PM")
                              : const SizedBox(),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 15, bottom: 3),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Next Appointment',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 110,
              child: CarouselSlider.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      itemIndex == 0
                          ? const AppointmentItemView(
                              hospitalName: 'Aryu Hospital',
                              image: 'assets/images/aryu.jpg',
                              date: '12th Nov, 2023',
                            )
                          : itemIndex == 1
                              ? const AppointmentItemView(
                                  hospitalName: 'Aung Yadanar',
                                  image: 'assets/images/aung.jpg',
                                  date: '24th Nov, 2023',
                                )
                              : itemIndex == 2
                                  ? const AppointmentItemView(
                                      hospitalName: 'Pinlon Hospital',
                                      image: 'assets/images/pinlon.jpg',
                                      date: '16th Dec, 2023',
                                    )
                                  : itemIndex == 3
                                      ? const AppointmentItemView(
                                          hospitalName: 'SSC Hospital',
                                          image: 'assets/images/ssc.jpg',
                                          date: '3rd Feb, 2024',
                                        )
                                      : const SizedBox(),
                  options: CarouselOptions(
                    height: 100,
                    aspectRatio: 4 / 3,
                    viewportFraction: 0.7,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 1),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 600),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: (index, reason) {},
                    scrollDirection: Axis.horizontal,
                  )),
            ),
          ],
        )),
      )),
    );
  }
}

class TimeView extends StatelessWidget {
  const TimeView(
      {super.key,
      required this.date,
      required this.dosage,
      required this.time});

  final String date;
  final String dosage;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.arrow_back_ios),
        ),
        SizedBox(
            width: 229,
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Date: $date",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
                Text(
                  "Dosage: $dosage",
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Time : $time",
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ],
            )),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.arrow_forward_ios),
        ),
      ],
    ));
  }
}

class AppointmentItemView extends StatelessWidget {
  const AppointmentItemView(
      {super.key,
      required this.image,
      required this.hospitalName,
      required this.date});

  final String image;
  final String hospitalName;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(95, 11, 175, 107),
                spreadRadius: 2,
                blurStyle: BlurStyle.solid,
                blurRadius: 8,
                offset: Offset(0, 3))
          ],
          border: Border.all(color: Colors.black, width: 1.5),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(25))),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 80,
              height: 85,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hospitalName,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("Date : $date")
              ],
            )
          ],
        ),
      )),
    );
  }
}
