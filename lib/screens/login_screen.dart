import 'package:ciyo_app/const/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHidden = true;

  String email = "";
  String password = "";

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {});
      Navigator.pushNamed(context, '/homescreen');
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 182,
                      width: 182,
                      child: Image.asset(
                        "assets/images/login.png",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.15,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email cannot be empty";
                          }
                          if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                          ).hasMatch(value)) {
                            return "Please enter valid Email";
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primary),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primary),
                          ),
                          hintText: "Username",
                          hintStyle: const TextStyle(color: Colors.white),
                          labelText: "Username",
                          labelStyle: const TextStyle(color: Colors.white),
                        ),
                        onChanged: (value) {
                          email = value;
                          setState(() {});
                        },
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.15,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be Empty";
                          }
                          if (!RegExp(r'.{8,}$').hasMatch(value)) {
                            return "Password length should be atleast 8";
                          }
                          if (!RegExp(r'^(?=.*?[A-Z])').hasMatch(value)) {
                            return "Please enter one character in Uppercase.";
                          }
                          if (!RegExp(r'(?=.*?[a-z])').hasMatch(value)) {
                            return "Please enter one character in Lowercase.";
                          }
                          if (!RegExp(r'(?=.*?[!@#\$&*~])').hasMatch(value)) {
                            return "Please enter one Special character.";
                          }
                          if (!RegExp(r'(?=.*?[0-9])').hasMatch(value)) {
                            return "Please enter Numeric character.";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          password = value;
                          setState(() {});
                        },
                        textInputAction: TextInputAction.go,
                        style: const TextStyle(color: Colors.white),
                        obscureText: _isHidden ? true : false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primary),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: primary),
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.white),
                          labelText: "Password",
                          labelStyle: const TextStyle(color: Colors.white),
                          suffixIcon: IconButton(
                            onPressed: () => _togglePasswordView(),
                            icon: Icon(
                                _isHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: primary),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(340, 50),
                        backgroundColor: primary,
                      ),
                      onPressed: () => moveToHome(context),
                      child: const Text("SIGN IN"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account ?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/signupscreen");
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: primary),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 300,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
