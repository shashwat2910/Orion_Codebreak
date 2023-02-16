import 'package:flutter/material.dart';
import 'package:fuel_theft_tracker/controller/authentication.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final authController = Get.put(FirebaseAuthentication());
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 1.25,
              child: Image(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: Text(
                "Login",
                style: GoogleFonts.dancingScript(
                  color: Colors.blue.shade600,
                  fontSize: 45,
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.25,
                child: TextFormField(
                  autocorrect: true,
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    hintText: "something@email.com",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.25,
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: _toggle,
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  obscureText: _obscureText,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                await authController.signIn(email.text, password.text);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue.shade600,
                ),
                width: MediaQuery.of(context).size.width / 2.75,
                child: Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/signup');
              },
              child: Text(
                "Create an Account!..",
                style: GoogleFonts.mcLaren(
                  color: Colors.lightBlue.shade300,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
