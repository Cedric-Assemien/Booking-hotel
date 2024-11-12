import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({super.key});

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: double.infinity,
          child: Image.asset(fit: BoxFit.cover, "assets/images/image (2).jpg"),
        ),
        Positioned(
          top: 50,
          left: 20,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(MdiIcons.moveResizeVariant),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              const Column(children: [
                Text("Loverel",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "baloo",
                        color: Colors.white)),
                Text("50 minutes",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ]),
              const SizedBox(
                width: 50,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(Icons.cameraswitch_rounded),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 100,
            right: 20,
            child: Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 5,
                        blurStyle: BlurStyle.solid)
                  ],
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/image (1).jpg"))),
            )),
        Positioned(
          bottom: 10,
          left: 25,
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(Iconsax.microphone5),
                ),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.5)),
                  child: const Icon(Iconsax.camera),
                ),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.5)),
                  child: const Icon(Iconsax.speaker4),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: const Icon(Icons.phone_disabled),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
