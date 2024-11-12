import 'package:flutter/material.dart';

class CreditCart extends StatefulWidget {
  const CreditCart({super.key});

  @override
  State<CreditCart> createState() => _CreditCartState();
}

class _CreditCartState extends State<CreditCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CreditCart"),
      ),
    );
  }
}