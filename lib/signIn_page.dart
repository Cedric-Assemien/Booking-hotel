// ignore_for_file: file_names

import 'package:booking_hotel/navigation_bar.dart';
import 'package:booking_hotel/signUp_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pinput/pinput.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
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
  void AlertDialogResetMDP() {
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
                    controller: emailController,
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
                        'Code envoyer à ${emailController.text}',
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
                        Get.snackbar(
                            "Félicitations", "Renseigner votre nouveau MDP",
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
                    controller: passwordController,
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
  bool rememberMe = true;
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Image.asset("assets/images/easyStay.png"),
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Let's get something",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Good to see you back",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 246, 244, 244),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.google,
                                      color: Colors.red,
                                    )),
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 24, 4, 209),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.facebook,
                                      color: Colors.white,
                                    )),
                                ElevatedButton.icon(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff82dcff),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.twitter,
                                      color: Colors.white,
                                    ))
                              ]),
                          const SizedBox(
                            height: 30,
                          ),
                          Form(
                            key: formKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20, bottom: 20),
                                  child: TextFormField(
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "remplissez les champs";
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Entrer votre Email",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.orange),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(0.1),
                                        prefixIcon: const Icon(
                                            Icons.mail_outline_outlined)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20, bottom: 20),
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: passwordController,
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
                                        hintText: "Entrer votre mot de passe",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.orange),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(0.1),
                                        prefixIcon:
                                            const Icon(Icons.lock_outline),
                                        suffixIcon:
                                            Icon(MdiIcons.eyeOffOutline)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: TextButton(
                                onPressed: AlertDialogResetMDP,
                                child: Text(
                                  "Forgot password ?",
                                  style: TextStyle(color: Colors.grey),
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(150, 50),
                                  elevation: 10,
                                  backgroundColor: mainColor,
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const navigationBar()));
                                },
                                child: Text(
                                  "Sign in".toUpperCase(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Don't have account ?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignupPage()));
                                  },
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(color: mainColor),
                                  ),
                                )
                              ])
                        ]),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
