import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/login_page.dart';
import 'package:flutter_auth/pages/signup_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Backslach flutter provides extraordinary flutter",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey)),
            SizedBox(
              height: 5,
            ),
            Text("tutorials Do Subscripe",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Colors.grey)),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/welcome.png"))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        child: Text("Login"),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUp();
                          }));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.black),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
