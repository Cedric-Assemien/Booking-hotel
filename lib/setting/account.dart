import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pinput/pinput.dart';

import '../main app/home_page.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController nameProfil;
  late TextEditingController emailProfil;
  late TextEditingController numberProfil;
  late TextEditingController adresseDomicile;
  late TextEditingController emailLoginController;
  late TextEditingController passwordLoginController;

  @override
  void initState() {
    super.initState();
    nameProfil = TextEditingController();
    emailProfil = TextEditingController();
    numberProfil = TextEditingController();
    adresseDomicile = TextEditingController();
    emailLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameProfil.dispose();
    emailProfil.dispose();
    numberProfil.dispose();
    adresseDomicile.dispose();
    emailLoginController.dispose();
    passwordLoginController.dispose();
  }

  // ignore: non_constant_identifier_names
  Widget ChampsOPT() {
    return Form(
        key: formKeyOTP,
        child: Pinput(
          validator: (value) {
            return value == validOPT ? null : "Code incorrecte";
          },
        ));
  }

  // ignore: non_constant_identifier_names
  void AlertDialogResetpassword() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: mainColor.withOpacity(0.75),
            scrollable: true,
            title: const Text(
              'Reset your password',
              style: TextStyle(color: Colors.white, fontFamily: "baloo"),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Enter your email",
                  style: TextStyle(
                      fontSize: 15, color: Colors.white, fontFamily: "baloo"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: TextFormField(
                    cursorColor: mainColor,
                    style: TextStyle(
                      color:
                          Colors.black.withOpacity(0.8), // mainColor du texte
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: emailLoginController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(color: mainColor),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        hintText: "easystay@gmail.com",
                        hintStyle: const TextStyle(color: Colors.black54),
                        prefixIcon: const Icon(
                          Icons.mail_outlined,
                          color: Colors.black54,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 3),
                      fixedSize: const Size(200, 50),
                    ),
                    onPressed: () {
                      Get.snackbar(
                        'Code envoyer à ${emailLoginController.text}',
                        "Vérifier votre mail pour reinitialiser votre mot de passe ",
                        duration: const Duration(seconds: 8),
                      );
                    },
                    child: const Text(
                      "Send code",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'baloo'),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 2,
                  height: 1,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Enter the opt code",
                  style: TextStyle(
                      fontSize: 15, color: Colors.white, fontFamily: "baloo"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ChampsOPT(),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Resend code",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: "baloo"),
                    ),
                  ),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 3),
                      fixedSize: const Size(200, 50),
                    ),
                    onPressed: () {
                      if (formKeyOTP.currentState!.validate()) {
                        Get.snackbar("Félicitations",
                            "Renseigner votre nouveau password",
                            duration: const Duration(seconds: 5));
                      }
                    },
                    child: const Text(
                      "Check",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'baloo'),
                    )),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 2,
                  height: 1,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Enter your new password",
                  style: TextStyle(
                      fontSize: 15, color: Colors.white, fontFamily: "baloo"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: TextFormField(
                    cursorColor: mainColor,
                    style: TextStyle(
                      color:
                          Colors.black.withOpacity(0.8), // mainColor du texte
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.name,
                    controller: passwordLoginController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(22),
                        borderSide: BorderSide(color: mainColor),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.7),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.black54),
                      prefixIcon: const Icon(
                        Icons.key,
                        color: Colors.black54,
                      ),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 3),
                      fixedSize: const Size(200, 50),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Check",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'baloo'),
                    )),
                const SizedBox(
                  height: 20,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      MdiIcons.closeCircle,
                      size: 35,
                      color: Colors.red,
                    ))
              ],
            ),
          );
        });
  }

  String validOPT = "1234";
  final formKeyOTP = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(
              top: 10,
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
                  "Edit account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Column(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/image (2).jpg"),
                child: Center(
                    child: InkWell(
                  child: Icon(
                    Icons.edit,
                    size: 40,
                    color: Colors.white,
                  ),
                )),
              ),
              Text(
                "Loverel",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Form(
              key: formKey,
              child: Column(children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    cursorColor: mainColor,
                    style: TextStyle(
                      color:
                          Colors.black.withOpacity(0.8), // mainColor du texte
                    ),
                    keyboardType: TextInputType.text,
                    controller: nameProfil,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(color: mainColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 5,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                        hintText: "Loverel",
                        hintStyle: const TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.edit, color: mainColor),
                        prefixIcon: Icon(
                          Iconsax.user,
                          color: mainColor,
                        )),
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(color: Colors.black54, width: 1.5),
                  ),
                  child: Row(children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.email,
                      color: mainColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "loverel@gmail.com",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    cursorColor: mainColor,
                    style: TextStyle(
                      color:
                          Colors.black.withOpacity(0.8), // mainColor du texte
                    ),
                    keyboardType: TextInputType.text,
                    controller: numberProfil,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(color: mainColor),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 5,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.5),
                        hintText: "Phone number",
                        hintStyle: const TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.edit, color: mainColor),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: mainColor,
                        )),
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red, width: 3.5),
                  ),
                  onPressed: AlertDialogResetpassword,
                  child: const Text(
                    "Reset your password",
                    style: TextStyle(color: Colors.red, fontFamily: "baloo"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      elevation: 10,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Save",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "baloo"),
                    )),
              ]))
        ]),
      ),
    );
  }
}
