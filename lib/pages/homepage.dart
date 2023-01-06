import 'package:doctor_app/pages/doctor_profile.dart';
import 'package:doctor_app/pages/pie.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 200, 205, 212),
        endDrawer: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // AppBar
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(22),
                    bottomLeft: Radius.circular(22)),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 119, 185, 244),
                  Color.fromARGB(255, 43, 131, 198),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    // Profile Picture
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/download.jpg',
                      ),
                      radius: 25,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Hello,",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                        Text("John Smith",
                            style: TextStyle(color: Colors.white, fontSize: 15))
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 35,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ),
            // search bar
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,
                          color: Color.fromARGB(255, 66, 63, 63)),
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(22)))),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                children: [
                  const Text(
                    "Top Doctor",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Expanded(child: SizedBox()),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See More",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                  const Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 106, 143, 228),
                    size: 20,
                  ),
                ],
              ),
            ),
            // Top Doctor Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                children: const [
                  DoctorCard(
                    image: 'assets/images/doc1.jpg',
                    name: "Dr. Lydia",
                    specialization: "General Practitiner",
                  ),
                  DoctorCard(
                    image: 'assets/images/doc2.jpg',
                    name: 'Dr. Sylvia',
                    specialization: "General Practitioner",
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "What Do You Need?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  ServiceCard(
                    name: 'Consultation',
                    image: 'assets/images/doc1.jpg',
                  ),
                  ServiceCard(
                    name: 'Lab Work',
                    image: 'assets/images/doc1.jpg',
                  ),
                  ServiceCard(
                    name: 'Doctor',
                    image: 'assets/images/doc1.jpg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  ServiceCard(
                    name: 'Medicine',
                    image: 'assets/images/doc1.jpg',
                  ),
                  ServiceCard(
                    name: 'Injection',
                    image: 'assets/images/doc1.jpg',
                  ),
                  ServiceCard(
                    name: 'Ambulance',
                    image: 'assets/images/doc1.jpg',
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: const BorderSide(style: BorderStyle.none),
      ),
      elevation: 4,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.17,
        width: MediaQuery.of(context).size.width * 0.30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Image.asset(
                width: MediaQuery.of(context).size.width * 0.45,
                image,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
    this.name,
    this.image,
    this.rating,
    this.specialization,
  }) : super(key: key);

  final String? name;
  final String? image;
  final String? rating;
  final String? specialization;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: const BorderSide(style: BorderStyle.none),
      ),
      elevation: 4,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.29,
        width: MediaQuery.of(context).size.width * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.155,
              child: Stack(
                children: [
                  SizedBox(
                    child: Image.asset(
                      height: MediaQuery.of(context).size.height * 0.2,
                      image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      width: 70,
                      right: 0,
                      height: 30,
                      bottom: 8,
                      child: Container(
                        width: 55,
                        height: 55,
                        color: const Color.fromARGB(255, 233, 229, 10),
                        child: Row(children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Text(
                                "5.0",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              )
                            ],
                          )
                        ]),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Text(
                name!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 8, top: 8, bottom: 10),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 119, 185, 244),
                        Color.fromARGB(255, 43, 131, 198),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width * 2, 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorProfile()),
                      );
                    },
                    child: Text(
                      specialization!,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
