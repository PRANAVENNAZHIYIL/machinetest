import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final _emailcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailcontroller.dispose();
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
                      width: 400.0,
                      height: 350.0,
                      decoration: const BoxDecoration(
                        color: Colors.white, // Set any color you want
                      ),
                    ),
                  ),
                )),
            Positioned(
                top: 120,
                right: 60,
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/images/a-man-standing-with-a-email-symbol-business-and-contact-concept-3d-rendering-conceptual-image-700-172205260.jpg'))),
                )),
            Positioned(
              bottom: 20,
              left: 10,
              child: SizedBox(
                width: 400,
                height: 180,
                child: TextFormField(
                  controller: _emailcontroller,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter email id',
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
                    } else if (!RegExp(
                            r'\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}\b',
                            caseSensitive: false)
                        .hasMatch(value)) {
                      return 'Please enter a valid email address';
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
                      // Do something with the email address
                      String mobilenumber = _emailcontroller.text;
                      // Clear the email field
                      _emailcontroller.clear();
                    }
                  },
                  child: const Text(
                    'Finish',
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
