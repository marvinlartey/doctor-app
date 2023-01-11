import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'pie.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 207, 207),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            collapsedHeight: 60,
            centerTitle: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.35,
            title: const Text('Profile'),
            flexibleSpace: Stack(fit: StackFit.passthrough, children: [
              Expanded(
                child: Image.asset(
                  'assets/images/doc1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  right: 20,
                  bottom: 100,
                  height: 100,
                  width: 150,
                  child: Container(
                    width: 60,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            color: const Color.fromARGB(255, 233, 229, 10),
                            child: Row(children: [
                              const Text("5.0"),
                              RatingBar(
                                itemSize: 18,
                                initialRating: 5,
                                onRatingUpdate: _DoStuff,
                                ratingWidget: RatingWidget(
                                    full: const Icon(
                                      Icons.star,
                                      size: 10,
                                    ),
                                    half: const Icon(
                                      Icons.abc,
                                      size: 15,
                                    ),
                                    empty: const Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.grey,
                                    )),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ))
            ]),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                "Stats",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            PieChartSample2(),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Text('About',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              child: Text(
                                " Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ",
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Color.fromARGB(255, 119, 185, 244),
                                    Color.fromARGB(255, 43, 131, 198),
                                  ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 70,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month_rounded,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Monday-Friday",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            "09:00-17:00",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                      const Spacer(),
                                      ElevatedButton(
                                        onPressed: (() {}),
                                        style: ElevatedButton.styleFrom(
                                            onPrimary: Colors.blue,
                                            primary: Colors.white),
                                        child: const Text("  Open  "),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GradientButton(
                      height: 55,
                      width: MediaQuery.of(context).size.width * 0.9,
                      text: 'Make an Appointment'),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }

  void _DoStuff(double value) {}
}

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);
  final String text;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 119, 185, 244),
            Color.fromARGB(255, 43, 131, 198),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
