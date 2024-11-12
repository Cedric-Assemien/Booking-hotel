import 'package:booking_hotel/list_proprety.dart';
import 'package:booking_hotel/main%20app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool lockBio = false;
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 50, left: 20),
          height: 48,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: mainColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: const Text(
              "Setting",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          child: Column(children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/image (2).jpg"),
            ),
            Text(
              "Loverel",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          color: Colors.transparent,
          elevation: 10,
          shadowColor: Colors.black38,
          child: Container(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Icon(MdiIcons.fingerprint),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "FaceID",
                ),
                const SizedBox(
                  width: 10,
                ),
                Switch(
                    activeColor: mainColor,
                    inactiveThumbColor: mainColor,
                    inactiveTrackColor: Colors.white,
                    value: lockBio,
                    onChanged: (value) {
                      setState(() {
                        lockBio = value;
                      });
                    }),
                const SizedBox(
                  width: 5,
                ),
                const SizedBox(
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                    indent: 15,
                    endIndent: 15,
                  ),
                ),
                Icon(MdiIcons.themeLightDark),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "DarkMode",
                ),
                const SizedBox(
                  width: 10,
                ),
                Switch(
                    activeColor: mainColor,
                    inactiveThumbColor: mainColor,
                    inactiveTrackColor: Colors.white,
                    value: darkMode,
                    onChanged: (value) {
                      setState(() {
                        darkMode = value;
                      });
                    }),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: mainColor.withOpacity(0.8),
                    blurRadius: 10,
                    offset: const Offset(5, 10),
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: settingAll.map((set) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => set.destination),
                      );
                    },
                    child: Card(
                      elevation: 10,
                      color: Colors.white,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 5),
                          height: 65,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                set.startIcon,
                                color: mainColor,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                set.name,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: mainColor),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: mainColor,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )),
                    ),
                  );
                }).toList(),
              )),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 10,
              fixedSize: Size(300, 50),
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Log out",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
      ]),
    );
  }
}
