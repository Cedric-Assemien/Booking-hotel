// ignore_for_file: camel_case_types

import 'dart:ui';

import 'package:booking_hotel/list_proprety.dart';
import 'package:booking_hotel/navigation_bar.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailHotel extends StatefulWidget {
  final NearbyLocation nearby;
  const DetailHotel({super.key, required this.nearby});

  @override
  State<DetailHotel> createState() => _DetailHotelState();
}

class _DetailHotelState extends State<DetailHotel> {
  bool extenDescrip = false;
  void _toggleDescription() {
    setState(() {
      extenDescrip = !extenDescrip;
    });
  }

  // ignore: non_constant_identifier_names
  void AlertDialogBooking() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: mainColor.withOpacity(0.75),
              scrollable: true,
              title: const Text(
                'Booking',
                style: TextStyle(color: Colors.white, fontFamily: "baloo"),
              ),
              content: Column());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Stack(
          children: [
            Container(
              height: 500,
              margin: EdgeInsets.only(bottom: 450),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: widget.nearby.mainImage.image)),
              child: Stack(children: [
                Positioned(
                  top: 40,
                  left: 25,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.white)),
                      SizedBox(width: 100),
                      Text("Detail hotel",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                      SizedBox(width: 100),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                widget.nearby.isLike = !widget.nearby.isLike;
                              });
                            },
                            child: widget.nearby.isLike == false
                                ? const Icon(
                                    Iconsax.heart,
                                    color: Colors.black,
                                  )
                                : const Icon(
                                    Iconsax.heart5,
                                    color: Colors.pink,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 50,
                    left: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 10, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    widget.nearby.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                  Text.rich(
                                    TextSpan(
                                        text: "\$${widget.nearby.price}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white),
                                        children: [
                                          TextSpan(
                                            text: "/night",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 15,
                                            ),
                                          )
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  widget.nearby.imagePreview.length,
                                  (index) => Container(
                                    height: 80,
                                    width: 120,
                                    margin: const EdgeInsets.only(
                                        right: 20, bottom: 10, left: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: widget
                                            .nearby.imagePreview[index].image,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      ),
                    )),
              ]),
            ),
            Positioned(
              bottom: 35,
              child: Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Row(
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
                          width: 180,
                        ),
                        Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            height: 25,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                widget.nearby.rating.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13.0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Iconsax.location, color: Colors.white),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.nearby.adress,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontFamily: "baloo",
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.nearby.description,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                          maxLines: extenDescrip ? null : 2,
                          overflow: extenDescrip
                              ? TextOverflow.visible
                              : TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 300),
                          child: TextButton(
                            onPressed: _toggleDescription,
                            child: Text(
                              extenDescrip ? 'Reduce' : 'Extend',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 225,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 30, right: 10, left: 15, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: Column(
                                  children: [
                                    Icon(Iconsax.wifi,
                                        color: Colors.orangeAccent),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Wi-fi",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: Column(
                                  children: [
                                    Icon(MdiIcons.heatingCoil,
                                        color: Colors.orangeAccent),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "heater",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: Column(
                                  children: [
                                    Icon(IcoFontIcons.fastFood,
                                        color: Colors.orangeAccent),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Food",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: Column(
                                  children: [
                                    Icon(IcoFontIcons.gymAlt2,
                                        color: Colors.orangeAccent),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Gym",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 60,
                                height: 60,
                                child: Column(
                                  children: [
                                    Icon(Icons.pool,
                                        color: Colors.orangeAccent),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Pool",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(350, 60),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                backgroundColor: mainColor),
                            onPressed: AlertDialogBooking,
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ))
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ])),
    );
  }
}
