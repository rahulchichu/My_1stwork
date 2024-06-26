import 'package:classassignment/view/signin/signin.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordone = TextEditingController();
    TextEditingController passwordtwo = TextEditingController();

    GlobalKey<FormState> siginkey = GlobalKey();
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: siginkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Sign Up for Free",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value != null && value.contains("@")) {
                        return null;
                      } else {
                        return "enter a proper mailid";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Your Email Address",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordone,
                    validator: (value) {
                      if (value!.isEmpty || value.length < 6) {
                        return "password must have 6 letters ";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Your Password",
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordtwo,
                    validator: (value) {
                      if (passwordone.text == passwordtwo.text) {
                        return null;
                      } else {
                        return "Password that have entered not match";
                      }
                    },
                    decoration: InputDecoration(
                        hintText: "Your Confirm Password",
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue)),
                        onPressed: () {
                          if (siginkey.currentState!.validate())
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => signin(),
                                ));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  SizedBox(
                    height: 320,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => signin(),
                                  ));
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w700),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
