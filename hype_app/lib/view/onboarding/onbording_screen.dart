import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hype_app/view/auth/sign_in.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
                image: DecorationImage(
                  image: AssetImage('image/hypest1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 15,top: 10),
                        child: Text(
                          "wel\ncome",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            height:
                                0.7, // Adjust this value to set the desired line gap
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20,),
                        
                        child: Text(
                          "Get all your loved foods in one once place,you just place the orer we do the rest",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          const   SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.green, Colors.green],
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Get.to(const SignInPage());
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontSize: 19,color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}