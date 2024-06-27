import 'package:classassignment/main.dart';
import 'package:classassignment/view/homescreen/homescreen.dart';
import 'package:classassignment/view/signup/signup.dart';
import 'package:flutter/material.dart';

class signin extends StatelessWidget {
  const signin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userid = TextEditingController();
    TextEditingController passid = TextEditingController();

    GlobalKey<FormState> siginkey = GlobalKey();
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: siginkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Sign in To Your Account",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: userid,
                  validator: (value) {
                    if (value != null && value.contains("@")) {
                      return null;
                    } else {
                      return "enter a proper mail id";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Your Email Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passid,
                  obscureText: true,
                  validator: (value) {
                    if (value != null && value.length <= 6) {
                      return null;
                    } else {
                      return "password entered invalid";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "Your Password",
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.check_box),
                    Text(
                      "Remember Me",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                      onPressed: () {
                        if (siginkey.currentState!.validate()) {
                          if (username == userid.text &&
                              password == passid.text) {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => homescreen(),
                                ),
                                (Route) => false);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("invalid credential")));
                          }
                        }
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => signup(),
                              ));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
