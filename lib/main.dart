import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/home.dart';

void main() {
  runApp(const FlutterAuth());
}

class FlutterAuth extends StatelessWidget {
  const FlutterAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
