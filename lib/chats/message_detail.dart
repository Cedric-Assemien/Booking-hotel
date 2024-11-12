import 'package:booking_hotel/chats/video_call.dart';
import 'package:booking_hotel/chats/voice_call.dart';
import 'package:booking_hotel/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:iconsax/iconsax.dart';

class MessageDetail extends StatefulWidget {
  const MessageDetail({
    super.key,
  });

  @override
  State<MessageDetail> createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          Stack(children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              height: 820,
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: 140,
                  ),
                  const Center(
                    child: Text("Today"),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 170),
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                      child: const Center(
                          child: Text(
                        "I am good fgsvredf",
                        style:
                            TextStyle(fontFamily: "baloo", color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                        height: 160,
                        width: 300,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width * 0.67,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/appart_1.jpg")),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const Text(
                                "regdsferdsgferdsfvcerdsfvcfedsf\nrgdfvrtfedgsftrfdgf",
                                style: TextStyle(
                                    fontFamily: "baloo", color: Colors.white),
                              )
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 300),
                    child: SizedBox(
                      child: Row(children: [
                        Text("10:24"),
                        SizedBox(width: 10),
                        Icon(
                          Boxicons.bx_check_double,
                          color: mainColor,
                          size: 30,
                        )
                      ]),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 20,
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(5, 5))
                        ],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: const Center(
                          child: Text(
                        "je suis ariver",
                        style: TextStyle(fontFamily: "baloo"),
                      )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Container(
                        height: 160,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(5, 5))
                          ],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width * 0.67,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/appart_2.jpg")),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const Text(
                                "regdsferdsgferdsfvcerdsfvcfedsf\nrgdfvrtfedgsftrfdgf",
                                style: TextStyle(fontFamily: "baloo"),
                              )
                            ],
                          ),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: SizedBox(
                      child: Row(children: [
                        Text("10:24"),
                        SizedBox(width: 10),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170),
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                      child: const Center(
                          child: Text(
                        "I am good fgsvredf",
                        style:
                            TextStyle(fontFamily: "baloo", color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                        height: 160,
                        width: 300,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width * 0.67,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/appart_3.jpg")),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const Text(
                                "regdsferdsgferdsfvcerdsfvcfedsf\nrgdfvrtfedgsftrfdgf",
                                style: TextStyle(
                                    fontFamily: "baloo", color: Colors.white),
                              )
                            ],
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 300),
                    child: SizedBox(
                      child: Row(children: [
                        Text("10:24"),
                        SizedBox(width: 10),
                        Icon(
                          Boxicons.bx_check_double,
                          color: mainColor,
                          size: 30,
                        )
                      ]),
                    ),
                  ),
                  const SizedBox(height: 10),
                ]),
              ),
            ),
            Positioned(
              top: 20,
              child: Card(
                shadowColor: Colors.black54,
                color: Colors.transparent,
                // margin: EdgeInsets.only(left: 10, right: 10),
                elevation: 10,
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  child: Row(children: [
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/image (2).jpg"))),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Loverel"), Text("en ligne")],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const VideoCall()));
                          },
                          child: const Icon(
                            Iconsax.camera,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const VoiceCall()));
                          },
                          child: const Icon(
                            Icons.phone_outlined,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ]),
                ),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: TextField(
              cursorColor: Colors.black,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(color: mainColor),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: "Ecrivez votre message",
                hintStyle: const TextStyle(color: Colors.black),
                prefixIcon: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Iconsax.add_circle4,
                  ),
                ),
                suffixIcon: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Iconsax.send1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
