// ignore_for_file: camel_case_types

import 'package:booking_hotel/detail_hotel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(children: [
                  const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current location",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(children: [
                          Icon(Icons.location_on_rounded),
                          Text(
                            "Lohore, Pakistan",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 32,
                          ),
                        ]),
                      ]),
                  const Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 233, 232, 232)),
                        color: Colors.white),
                    child: const Icon(Icons.notifications_rounded),
                  ),
                ]),
              ),
              Row(children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: const EdgeInsets.only(left: 8),
                  height: 35,
                  width: 95,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 56, 55, 55),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(children: [
                    Icon(Icons.home_outlined, color: Colors.white),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Hotel",
                      style: TextStyle(color: Colors.white),
                    )
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  padding: const EdgeInsets.only(left: 8),
                  height: 35,
                  width: 95,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(children: [
                    Icon(Boxicons.bx_store_alt, color: Colors.grey),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Market",
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                  padding: const EdgeInsets.only(left: 8),
                  height: 35,
                  width: 95,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 254, 254),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(children: [
                    Icon(FeatherIcons.coffee, color: Colors.grey),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Coffee",
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
                )
              ]),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nearby your location",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Text(
                        "See all ",
                        style: TextStyle(fontSize: 16),
                      )
                    ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const page_detail()));
                      },
                      child: Container(
                        //  height: 290,
                        width: 260,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 15),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 217, 216, 216),
                              blurRadius: 2,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(children: [
                          Container(
                            height: 200,
                            width: 260,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/madbookies  (73)-edited.jpg")),
                            ),
                            child: Stack(children: [
                              Positioned(
                                top: 12,
                                right: 10,
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Icon(CupertinoIcons.heart_fill),
                                ),
                              )
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "The Luxury Hotel with Pool",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(children: [
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    size: 16,
                                    color: Colors.amber,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("5.0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13)),
                                ]),
                              ],
                            ),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "2972 Westheimer Rd,Santa Ana,linois",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12.5),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, bottom: 10, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                      text: "\$199,9",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                          text: " /night",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15),
                                        )
                                      ]),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      //  height: 290,
                      width: 260,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 15),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 217, 216, 216),
                            blurRadius: 2,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(children: [
                        Container(
                          height: 200,
                          width: 260,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/Cabecera_M.jpg")),
                          ),
                          child: Stack(children: [
                            Positioned(
                              top: 12,
                              right: 10,
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(CupertinoIcons.heart_fill),
                              ),
                            )
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "The Luxury Hotel with Pool",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(children: [
                                Icon(
                                  CupertinoIcons.star_fill,
                                  size: 16,
                                  color: Colors.amber,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("5.0",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13)),
                              ]),
                            ],
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "2972 Westheimer Rd,Santa Ana,linois",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12.5),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, bottom: 10, top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                    text: "\$199,9",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: " /night",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 15),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Destination",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 120,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 2),
                          ]),
                      child: Row(children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/1518365.jpg")),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lahore hotel",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: "\$199,9",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: "/night",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                              Row(children: [
                                Text(
                                  "2972 Westheimer Rd,santa ana.",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                            ],
                          ),
                        ),
                      ])),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 120,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 2),
                          ]),
                      child: Row(children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/type de chambre par agencement.webp")),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lahore hotel",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: "\$199,9",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: "/night",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                              Row(children: [
                                Text(
                                  "2972 Westheimer Rd,santa ana.",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                            ],
                          ),
                        ),
                      ])),
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 120,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 2),
                          ]),
                      child: Row(children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/Slide-2.jpg")),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Lahore hotel",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: "\$199,9",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        children: [
                                          TextSpan(
                                            text: "/night",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 15),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                              Row(children: [
                                Text(
                                  "2972 Westheimer Rd,santa ana.",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ]),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ]),
                            ],
                          ),
                        ),
                      ]))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
