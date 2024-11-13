import 'package:booking_hotel/detail_page/detail_hotel_nearby.dart';
import 'package:booking_hotel/main%20app/home_page.dart';
import 'package:booking_hotel/list_proprety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:iconsax/iconsax.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  int searchProperty = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/explore.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 1,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 0, left: 20, bottom: 10),
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: const Text(
                      "explore map",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 200,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Card(
                          color: Colors.transparent,
                          elevation: 10,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "remplissez les champs";
                              } else {
                                FocusScope.of(context).unfocus();
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter your destination",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: mainColor),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Iconsax.search_normal_1)),
                          ),
                        ),
                      ),
                      Row(children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                searchProperty = 0;
                              });
                            },
                            child: searchProperty == 0
                                ? Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 10),
                                    padding: const EdgeInsets.only(left: 8),
                                    height: 35,
                                    width: 95,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: const Offset(0, 5),
                                        )
                                      ],
                                      color: mainColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Row(children: [
                                      Icon(Icons.home_outlined,
                                          color: Colors.white),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Hotel",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ]),
                                  )
                                : Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 10),
                                    padding: const EdgeInsets.only(left: 8),
                                    height: 35,
                                    width: 95,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: const Offset(0, 5),
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Row(children: [
                                      Icon(Icons.home_outlined,
                                          color: Colors.grey),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Hotel",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ]),
                                  )),
                        InkWell(
                            onTap: () {
                              setState(() {
                                searchProperty = 1;
                              });
                            },
                            child: searchProperty == 1
                                ? Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 10, 20, 10),
                                    padding: const EdgeInsets.only(left: 8),
                                    height: 35,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: const Offset(0, 5),
                                        )
                                      ],
                                      color: mainColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Row(children: [
                                      Icon(Icons.home_work_rounded,
                                          color: Colors.white),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Residence",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ]),
                                  )
                                : Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 10, 20, 10),
                                    padding: const EdgeInsets.only(left: 8),
                                    height: 35,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 5,
                                          offset: const Offset(0, 5),
                                        )
                                      ],
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Row(children: [
                                      Icon(Icons.home_work_rounded,
                                          color: Colors.grey),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Residence",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ]),
                                  )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              searchProperty = 2;
                            });
                          },
                          child: searchProperty == 2
                              ? Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 15, 20, 10),
                                  padding: const EdgeInsets.only(left: 8),
                                  height: 35,
                                  width: 115,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: const Offset(0, 5),
                                      )
                                    ],
                                    color: mainColor,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(children: [
                                    Icon(Boxicons.bxs_building_house,
                                        color: Colors.white),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Penthouse",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ]),
                                )
                              : Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 15, 20, 10),
                                  padding: const EdgeInsets.only(left: 8),
                                  height: 35,
                                  width: 115,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: const Offset(0, 5),
                                      )
                                    ],
                                    color: const Color.fromARGB(
                                        255, 254, 254, 254),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(children: [
                                    Icon(Boxicons.bxs_building_house,
                                        color: Colors.grey),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Penthouse",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ]),
                                ),
                        )
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 55,
              child: Row(
                children: [
                  SizedBox(
                    width: 400,
                    height: 250,
                    child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                        ),
                        shrinkWrap: true,
                        itemCount: nearby.length,
                        itemBuilder: (context, index) {
                          NearbyLocation near = nearby[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailHotelNearby(nearby: near)));
                            },
                            child: Container(
                              height: 290,
                              width: 100,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 15),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: mainColor.withOpacity(0.8),
                                      blurRadius: 5,
                                      blurStyle: BlurStyle.inner,
                                      offset: Offset(5, 8),
                                      spreadRadius: 1)
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: near.mainImage.image),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: SizedBox(
                                    child: Text(
                                      near.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 5, bottom: 5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Iconsax.location),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        near.adress,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 5, right: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Icon(
                                          CupertinoIcons.star_fill,
                                          size: 16,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(near.rating.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13)),
                                      ]),
                                      RichText(
                                        text: TextSpan(
                                            text: near.price,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                            children: [
                                              TextSpan(
                                                text: " /night",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 15),
                                              )
                                            ]),
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          );
                        }),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
