import 'package:flutter/material.dart';
import 'package:flutter_application_uidemo/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final _phoneController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 31, 3, 169),
                  Color.fromARGB(255, 218, 9, 78),
                ],
              )),
            ),
            Positioned(
                top: 80,
                right: 65,
                child: Opacity(
                  opacity: 0.1, // Set the opacity value between 0.0 and 1.0
                  child: ClipOval(
                    child: Container(
                      width: 280.0,
                      height: 350.0,
                      decoration: const BoxDecoration(
                        color: Colors.white, // Set any color you want
                      ),
                    ),
                  ),
                )),
            Positioned(
                right: 180,
                bottom: 500,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.2)),
                )),
            Positioned(
                top: 383,
                right: 190,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                top: 120,
                right: 60,
                child: Container(
                  width: 300,
                  height: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/woman-avatar-profile-round-icon_24640-14047.jpg.avif'))),
                )),
            Positioned(
                top: 350,
                right: 130,
                child: Container(
                  width: 150,
                  height: 17,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                top: 380,
                right: 110,
                child: Container(
                  width: 200,
                  height: 17,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                )),
            Positioned(
              bottom: 20,
              left: 10,
              child: SizedBox(
                width: 400,
                height: 180,
                child: TextFormField(
                  controller: _phoneController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'mobile number',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 25),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 3.0,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter mobile number';
                    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                      return 'Please enter a valid 10-digit phone number';
                    }
                    return null;
                  },
                ),
              ),
            ),
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
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Screen3()),
                      );
                      // Do something with the email address
                      String mobilenumber = _phoneController.text;
                      // Clear the email field
                      _phoneController.clear();
                    }
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                )),
            Positioned(
                bottom: 250,
                right: -200,
                child: Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1)),
                )),
          ],
        ),
      ),
    );
  }
}
