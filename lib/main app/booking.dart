import 'dart:ui';
import 'package:booking_hotel/chats/message_detail.dart';
import 'package:booking_hotel/main%20app/home_page.dart';
import 'package:booking_hotel/list_proprety.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20, left: 20),
          height: 48,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  const Text(
                    "Booking",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
            children: popular.map((pop) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageDetail()),
              );
            },
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20),
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: mainColor,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: pop.mainImage.image),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 35,
                              width: 85,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.check_circle, color: Colors.green),
                                  Text(
                                    "Active",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: mainColor.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Text(
                                pop.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\$${pop.price}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 130,
                                    child: Row(
                                      children: [
                                        Icon(Iconsax.calendar_1,
                                            color: Colors.white),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Check-in",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Text(
                                                "11/11/2024",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 130,
                                    child: Row(
                                      children: [
                                        Icon(Iconsax.calendar_1,
                                            color: Colors.white),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Check-out",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Text(
                                                "08/12/2024",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          );
        }).toList())
      ],
    )));
  }
}
