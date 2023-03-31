import 'package:flutter/material.dart';
import 'package:flutter_application_uidemo/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 31, 3, 169),
                Color.fromARGB(255, 218, 9, 78),
              ],
            )),
          ),
          Positioned(
              top: 400,
              right: 170,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1)),
              )),
          Positioned(
            top: 320,
            right: 130,
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            top: 400,
            right: 200,
            child: Container(
                width: 150,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Image.asset(
                    "assets/images/Google_Pay_Logo.svg.png",
                    fit: BoxFit.fitWidth,
                  ),
                )),
          ),
          Positioned(
              top: 468,
              right: 250,
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.2)),
              )),
          Positioned(
              top: 475,
              right: 257,
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
          Positioned(
              bottom: 30,
              left: 35,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    minimumSize:
                        MaterialStateProperty.all(const Size(350, 50))),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Screen2()),
                  );
                },
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              )),
          Positioned(
              bottom: 5,
              right: -160,
              child: Container(
                width: 280,
                height: 180,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1)),
              )),
        ],
      ),
    );
  }
}
