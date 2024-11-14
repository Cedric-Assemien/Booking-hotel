import 'package:booking_hotel/main%20app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          height: 48,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios_new_rounded,
                      color: Colors.white)),
              const SizedBox(
                width: 100,
              ),
              const Text(
                "Notifications",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Card(
            elevation: 10,
            color: Colors.transparent,
            child: Container(
              height: 140,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 3,
                              offset: Offset(2, 5))
                        ],
                        color: mainColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Iconsax.notification_bing5,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "You have a new reservation for :\n",
                              style:
                                  TextStyle(fontSize: 17, fontFamily: "baloo")),
                          TextSpan(
                              text: "Propriete moderne1",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "baloo",
                                  color: mainColor)),
                        ])),
                        SizedBox(
                          width: 300,
                          child: Text(
                            textAlign: TextAlign.justify,
                            maxLines: 3,
                            softWrap: true,
                            "Your reservation has been confirmed, you can come and see the property.",
                          ),
                        )
                      ])
                ],
              ),
            ),
          ),
        )
      ])),
    );
  }
}
