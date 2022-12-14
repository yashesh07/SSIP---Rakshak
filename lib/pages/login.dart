import 'package:flutter/material.dart';
import 'package:rakshak/model/signupinput.dart';
import 'package:rakshak/pages/home_page.dart';
import 'package:rakshak/pages/signin.dart';
import 'package:rakshak/services/auth.dart';
import 'package:rakshak/utils/global.dart';
import 'package:rakshak/utils/locator.dart';
import '../custom_widgets/constants.dart';
import '../custom_widgets/text_field_shadow.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthService auth = const AuthService();

  final SignUpInput _signUpInput = SignUpInput();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 4,
                  ),
                  const Text('Please Sign In to continue'),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFieldShadow(
                    labelText: 'PHONE NUMBER',
                    icon: Icons.call,
                    textInputType: TextInputType.phone,
                    onChanged: (e) {
                      _signUpInput.phoneNumber = e;
                    },
                    validator: (e) {
                      if (_signUpInput.phoneNumber!.length < 10) {
                        return "Phone number should be atleast 10-digit";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFieldShadow(
                    labelText: 'PASSWORD',
                    icon: Icons.person,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    onChanged: (e) {
                      _signUpInput.password = e;
                    },
                    validator: (e) {
                      if (_signUpInput.password!.length < 8) {
                        return "Password atleat 8 characters";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 5,
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () async {
                          setState(() {
                            loading = true;
                          });
                          await auth
                              .signInRequest(_signUpInput)
                              .then((value) => Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                    (route) => false,
                                  ))
                              .onError((error, stackTrace) {
                            locator<GlobalServices>()
                                .errorSnackBar("Invalid Credentials");
                            setState(() {
                              loading = false;
                            });
                          });
                        },
                        child: loading
                            ? const CircularProgressIndicator(
                                color: kMarronColor,
                              )
                            : Container(
                                alignment: Alignment.centerRight,
                                width: 125,
                                decoration: BoxDecoration(
                                    color: kMarronColor,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: kMarronColor,
                                          offset: Offset(2.0, 2.0))
                                    ]),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward,
                                        color: Colors.white),
                                  ],
                                )),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(flex: 2, child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account? ',
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: kMarronColor,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
