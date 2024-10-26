import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:green_saplings/constants.dart';
import 'package:green_saplings/ui/root_page.dart';
import 'package:green_saplings/ui/screens/forgot_password.dart';
import 'package:green_saplings/ui/screens/signup_page.dart';
import 'package:green_saplings/ui/screens/widgets/custom_textfield.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a size variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          // Space is adjusted here
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/signin.png'),
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            // Username field for the login
            const SizedBox(
              height: 30,
            ),
            const CustomTextfield(
              obscureText: false,
              hintText: 'Enter Email',
              icon: Icons.alternate_email,
            ),
            const CustomTextfield(
              obscureText: true,
              hintText: 'Enter Password',
              icon: Icons.lock,
            ),
            const SizedBox(
              height: 10,
            ),
            // Creating the sign-in button
            GestureDetector(
              //=> add function to button
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const RootPage(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Let's create the forgot password section
            GestureDetector(
              //=> adding onTap function to forgot password section
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const ForgotPassword(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Center(
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: 'Forgot Password?',
                      style: TextStyle(
                        color: Constants.blackColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Reset Here',
                      style: TextStyle(
                        color: Constants.primaryColor,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('OR'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Constants.primaryColor),
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 30,
                    child: Image.asset('assets/images/google.png'),
                  ),
                  Text(
                    'Sign In with Google',
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              //=> adding onTap function to sign-up section
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const SignUp(),
                        type: PageTransitionType.bottomToTop));
              },
              child: Center(
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: 'New to Planty?',
                      style: TextStyle(
                        color: Constants.blackColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                        color: Constants.primaryColor,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
