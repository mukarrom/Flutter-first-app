import 'package:flutter/material.dart';
import 'package:mukarrom/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        // login page background color white
        color: Colors.white,
        // => scroll view
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                // height: 700,
              ),
              // => sized Box like a div in website
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // => input
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          } else if (value.length < 3) {
                            return "Username length can not be under 3";
                          }
                          return null;
                        },
                      ),

                      TextFormField(
                        // text make like dot ........
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password", labelText: "password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password can not be under 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,

                            alignment: Alignment.center,
                            // color: Colors.deepPurple,

                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      )

                      // ElevatedButton(
                      //   // go to home page
                      //   onPressed: (() {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   }),
                      //   style: TextButton.styleFrom(
                      //       minimumSize: const Size(150, 40)),
                      //   child: const Text("Login"),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
