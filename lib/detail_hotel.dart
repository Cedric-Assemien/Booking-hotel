// ignore_for_file: camel_case_types


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class page_detail extends StatefulWidget {
  const page_detail({super.key});

  @override
  State<page_detail> createState() => _page_detailState();
}

class _page_detailState extends State<page_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(children: [
          Container(
            margin: const EdgeInsets.fromLTRB(25, 25, 25, 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.fromLTRB(8, 1, 1, 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                            )
                          ]),
                      child: const Icon(Icons.arrow_back_ios)),
                  const Text(
                    "Detail",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.fromLTRB(8, 1, 1, 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                            )
                          ]),
                      child: const Icon(Icons.menu)),
                ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            height: 280,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/madbookies  (73)-edited.jpg"))),
            child: Stack(children: [
              Positioned(
                top: 15,
                right: 10,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.red,
                  ),
                ),
              ),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 35,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 244, 244),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wifi,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Free wifi",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 35,
                width: 155,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 244, 244),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FeatherIcons.coffee,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Free Breast/fast",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 35,
                width: 80,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 244, 244),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        shadows: [Shadow(color: Colors.black, blurRadius: 0.5)],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5.0",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "The Luxury Hotel with Pool",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text.rich(
                  TextSpan(
                      text: "\$200,7",
                      style: TextStyle(fontWeight: FontWeight.bold),
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
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "2972 westheimer Rd,Santa Ana,linois",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text.rich(TextSpan(
                    text:
                        "rghejgkdshfcudnjkehdsfncjkerdh,snfcjhrfedsvfgdsvrfedsffvgrdfgfvcjrfdshfncjkfedsn;fwckjrefds,;bfcnjef,ds;bwfnc jkef,;dsnfc kj,fe;dsfnchjerdsn,bcxjhedsn,",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    children: [
                      TextSpan(
                          text: "Read More...",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold))
                    ])),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 18),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Preview",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    height: 100,
                    width: 120,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1518365.jpg"),
                        )),
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Cabecera_M.jpg"),
                        )),
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Slide-2.jpg"),
                        )),
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/type de chambre par agencement.webp"),
                        )),
                  ),
                ]),
              ),
            ]),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(vertical: 25),
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
                child: Text(
              "Book Now",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            )),
          )
        ])),
      ),
    );
  }
}
