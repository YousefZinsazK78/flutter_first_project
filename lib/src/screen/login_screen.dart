import 'package:flutter/material.dart';
import 'package:flutter_first_project/config/color_config.dart';
import 'package:flutter_first_project/src/widget/button_widget.dart';
import 'package:flutter_first_project/src/widget/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                'Login',
                style: headlineTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please sign in to continue.",
                style: bodyTextStyle,
              ),
              const SizedBox(
                height: 40,
              ),
              const TextFieldWidget(
                hintText: "Email",
                prefixIcon: Icons.mail_outline,
                forgotButton: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextFieldWidget(
                hintText: "Password",
                prefixIcon: Icons.lock_outline,
                forgotButton: true,
              ),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: ButtonWidget(
                  buttonText: "Login",
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('sign up'),
                      ),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sign up',
                          style: bodyTextStyle.copyWith(color: primaryColor),
                        ),
                      ],
                      text: 'Don\'t have and account? ',
                      style: bodyTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
